module Rlint
  module Analyze
    ##
    # {Rlint::Analyze::Definitions} is a callback class that is used to keep
    # track of defined classes, variables and the likes.
    #
    class Definitions < Rlint::Callback
      ##
      # Hash containing the various Ruby classes that are used to represent
      # various types.
      #
      # @return [Hash]
      #
      TYPE_CLASSES = {
        :string      => 'String',
        :integer     => 'Fixnum', # Fixnum and Bignum share the same methods.
        :float       => 'Float',
        :symbol      => 'Symbol',
        :array       => 'Array',
        :hash        => 'Hash',
        :brace_block => 'Proc',
        :lambda      => 'Proc',
        :regexp      => 'Regexp',
        :range       => 'Range'
      }

      ##
      # Hash containing the scoping data to copy over when including or
      # extending a module.
      #
      # @return [Hash]
      #
      INCLUDE_SYMBOLS = {
        'include' => {
          :constant        => :constant,
          :instance_method => :instance_method
        },
        'extend' => {
          :constant        => :constant,
          :instance_method => :method
        }
      }

      ##
      # Array containing the variable types to use for checking for unused
      # variables.
      #
      # @return [Array]
      #
      UNUSED_VARIABLES = [
        :local_variable,
        :instance_variable,
        :class_variable,
        :global_variable
      ]

      ##
      # @see Rlint::Callback#initialize
      #
      def initialize(*args)
        super

        @global_scope = Scope.new(nil, true, true)
        @scopes       = []
        @namespace    = []
        @call_types   = []
      end

      ##
      # Called after all the supplied tokens have been processed. This method
      # is primarily used for checking unused variables in the global scope.
      #
      def on_finish
        warn_for_unused_variables
      end

      ##
      # Called when a local variable is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_local_variable(token)
        scope.lookup(:local_variable, token.name).used = true
      end

      ##
      # Called when an instance variable is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_instance_variable(token)
        found = scope.lookup(:instance_variable, token.name)

        if found
          found.used = true
        else
          error(
            "undefined instance variable #{token.name}",
            token.line,
            token.column
          )
        end
      end

      ##
      # Called when a class variable is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_class_variable(token)
        found = scope.lookup(:class_variable, token.name)

        if found
          found.used = true
        else
          error(
            "undefined class variable #{token.name}",
            token.line,
            token.column
          )
        end
      end

      ##
      # Called when a global variable is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_global_variable(token)
        found = scope.lookup(:global_variable, token.name)

        if !Kernel.global_variables.include?(token.name.to_sym) and !found
          error(
            "undefined global variable #{token.name}",
            token.line,
            token.column
          )
        elsif found
          found.used = true
        end
      end

      ##
      # Called when a constant is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_constant(token)
        found = scope.lookup(:constant, token.name)

        # Constants defined in a parent constants are inherited when defining
        # Ruby code inside a namespace (e.g. a nested module). For example,
        # `Creature::Human` is available in `Creature::Fish` even when
        # referenced just as `Fish`.
        if !found and !@namespace.empty?
          @namespace.each do |segment|
            segment_found = scope.lookup(:constant, segment)

            if segment_found
              segment_found = segment_found.lookup(:constant, token.name)

              if segment_found
                found = segment_found
                break
              end
            end
          end
        end

        if found and found.is_a?(Token::Token)
          found.used = true
        elsif !found
          error("undefined constant #{token.name}", token.line, token.column)
        end
      end

      ##
      # Called when a constant path is found.
      #
      # @see Rlint::Analyze::Definitions#on_constant
      #
      def on_constant_path(token)
        name_scope = scope
        segments   = []

        token.name.each do |name|
          segments << name
          found    = name_scope.lookup(:constant, name)

          if found
            name_scope = found
          else
            name_scope = nil

            break
          end
        end

        name = segments.join('::')

        if !name_scope
          error("undefined constant #{name}", token.line, token.column)
        end
      end

      ##
      # Called when a method call is being processed.
      #
      # @param [Rlint::Token::MethodToken] token
      #
      def on_method(token)
        # Include the specified module into the current scope.
        if INCLUDE_SYMBOLS.key?(token.name)
          token.parameters.each do |param|
            next unless param.type == :constant

            found = scope.lookup(:constant, param.name)

            next unless found

            # Copy over all the constants and methods.
            INCLUDE_SYMBOLS[token.name].each do |source, target|
              found.symbols[source].each do |name, data|
                scope.add(target, name, data)
              end
            end
          end
        end
      end

      ##
      # Called after a method or undefined local variable is found and has been
      # processed.
      #
      # @param [Rlint::Token::MethodToken] token
      #
      def after_method(token)
        method_exists = scope.lookup(call_type, token.name)
        var_exists    = scope.lookup(:local_variable, token.name)
        kernel        = scope.lookup(:constant, 'Kernel')
        kernel_method = false

        if kernel.lookup(:method, token.name) \
        or kernel.lookup(:instance_method, token.name)
          kernel_method = true
        end

        # Method called on an object.
        if token.receiver
          receiver_scope = scope
          receiver_type  = token.receiver.type
          receiver_name  = token.receiver.name
          key            = :instance_method

          if token.receiver.name.is_a?(Array)
            receiver_scope = resolve_scope(token.receiver.name)
          end

          return unless receiver_scope

          # Variables that aren't constants.
          if token.receiver.is_a?(Token::VariableToken) \
          and receiver_type != :constant \
          and receiver_type != :constant_path
            value = receiver_scope.lookup(receiver_type, receiver_name)
            type  = nil

            if !value.nil? and !value.value.nil?
              value = value.value
              type  = TYPE_CLASSES[value.type]
            end

            # Extract the class from a method call.
            if value.respond_to?(:receiver)
              while value.respond_to?(:receiver)
                value = value.receiver
              end

              type = value.name
            end

          # Ruby values being used directly (e.g. `'foo'.upcase`).
          elsif TYPE_CLASSES.key?(receiver_type)
            type = TYPE_CLASSES[receiver_type]

          # Constants and everything else.
          else
            key  = :method
            type = receiver_name.is_a?(Array) \
              ? receiver_name[-1] \
              : receiver_name
          end

          return unless type

          # Retrieve the constant to check for the existence of the method.
          found = receiver_scope.lookup(:constant, type)

          if found.is_a?(Scope) and !found.lookup(key, token.name)
            if key == :instance_method
              error = "undefined instance method #{token.name}"
            else
              error = "undefined class method #{token.name}"
            end

            error(error, token.line, token.column)
          end
        # Global method called.
        elsif !token.receiver \
        and (!method_exists and !var_exists and !kernel_method)
          error(
            "undefined local variable or method #{token.name}",
            token.line,
            token.column
          )
        end
      end

      ##
      # Called when a block is found. This callback is used to check if the
      # parameters of the block shadow existing local variables defined in the
      # outer scope.
      #
      # @param [Rlint::Token::BlockToken] token The token of the block.
      #
      def on_block(token)
        token.parameters.each do |param|
          if scope.lookup(param.type, param.name)
            warning(
              "shadowing outer local variable #{param.name}",
              param.line,
              param.column
            )
          end
        end
      end

      ##
      # Adds warnings for all unused variables in the current scope.
      #
      def warn_for_unused_variables
        UNUSED_VARIABLES.each do |type|
          scope.symbols[type].each do |name, token|
            if token.is_a?(Token::Token) and !token.used and !token.reported
              token.reported = true
              human_readable = type.to_s.gsub('_', ' ')

              warning(
                "assigned but unused #{human_readable} #{token.name}",
                token.line,
                token.column
              )
            end
          end
        end
      end
    end # Definitions
  end # Analyze
end # Rlint
