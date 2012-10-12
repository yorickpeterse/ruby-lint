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
      # Array containing the key names of the variables that should be exported
      # out of a method definition.
      #
      # @return [Array]
      #
      EXPORT_VARIABLES = [:instance_variable, :class_variable, :constant]

      ##
      # Array containing the names of modules that are included into classes by
      # default.
      #
      # @return [Array]
      #
      DEFAULT_INCLUDES = ['Kernel', 'Module']

      ##
      # @see Rlint::Callback#initialize
      #
      def initialize(*args)
        super

        @global_scope     = Scope.new(nil, true)
        @scopes           = []
        @current_constant    = nil
        @call_types       = []
        @included_modules = DEFAULT_INCLUDES.dup
      end

      ##
      # Called when a value is assigned to a variable.
      #
      # @param [Rlint::Token::AssignmentToken] token
      #
      def on_assignment(token)
        if token.type == :global_variable
          variable_scope = @global_scope
        else
          variable_scope = scope
        end

        # Assignment using a constant path. In this case each path segment
        # should exist (with the exception of the last one) for the assignment
        # to take place.
        if token.name.is_a?(Array)
          name_scope = scope

          token.name[0..-2].each do |segment|
            name_scope = name_scope.lookup(:constant, segment)
          end

          if name_scope
            variable_scope = name_scope
          else
            on_constant_path(token)

            return
          end

          name = token.name[-1]
          type = :constant
        else
          name = token.name
          type = token.type
        end

        variable_scope.add(type, name, token.value)
      end

      ##
      # Called when a new method is defined.
      #
      # @param [Rlint::Token::MethodDefinitionToken] token
      #
      def on_method_definition(token)
        type  = :instance_method
        added = false

        # If a receiver is specified the method should be added as a class
        # method.
        if token.receiver
          # Method for the current class.
          if token.receiver.name == 'self' \
          or token.receiver.name == @current_constant
            type = :method
          # Method for a different class (e.g. `def String.foo; ...; end`
          else
            found = scope.lookup(token.receiver.type, token.receiver.name)
            added = true

            if found
              found.add(:method, token.name, token)
            else
              error(
                "undefined method receiver #{token.receiver.name}",
                token.receiver.line,
                token.receiver.column
              )
            end
          end
        end

        scope.add(type, token.name, token) unless added

        new_scope = Scope.new(scope)

        # Add all the parameters as local variables to the scope.
        token.parameters.each do |param|
          new_scope.add(param.type, param.name, param)
        end

        @call_types << type
        @scopes     << new_scope
      end

      ##
      # Called after a method definition has been processed.
      #
      # @see Rlint::Analyze::Definitions#on_method_definition
      #
      def after_method_definition(token)
        # TODO: exporting these variables should only be done if the method is
        # actually called.
        last_scope = @scopes.pop

        EXPORT_VARIABLES.each do |key|
          scope.symbols[key] = scope.symbols[key].merge(
            last_scope.symbols[key]
          )
        end

        @call_types.pop
      end

      ##
      # Called when a class definition is found.
      #
      # @param [Rlint::Token::ClassToken] token
      #
      def on_class(token)
        name              = token.name.join('::')
        @current_constant = name
        @call_types       << :method

        # If a class has already been defined the scoping data should not be
        # overwritten.
        if scope.lookup(:constant, name)
          @scopes << scope

          return
        end

        parent    = scope.lookup(:constant, token.parent.join('::'))
        new_scope = Scope.new([parent, scope])

        scope.add(:constant, @current_constant, new_scope)

        @scopes << new_scope
      end

      ##
      # Called after a class definition was found and processed.
      #
      # @see Rlint::Analyze::Definitions#on_class
      #
      def after_class(token)
        @scopes.pop
        @call_types.pop

        @current_constant = nil
      end

      ##
      # Called when a module is defined.
      #
      # @param [Rlint::Token::Token] token Token class containing details about
      #  the module.
      #
      def on_module(token)
        name              = token.name.join('::')
        @current_constant = name
        @call_types       << :method

        # If a module has already been defined the scope should not be
        # overwritten.
        if scope.lookup(:constant, name)
          @scopes << scope

          return
        end

        new_scope = Scope.new(scope)

        scope.add(:constant, name, new_scope)

        @scopes << new_scope
      end

      ##
      # Called after a module definition has been processed.
      #
      # @see Rlint::Analyze::Definitions#on_module
      #
      def after_module(token)
        @call_types.pop
        @scopes.pop

        @current_constant = nil
      end

      ##
      # Called when an instance variable is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_instance_variable(token)
        unless scope.lookup(:instance_variable, token.name)
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
        unless scope.lookup(:class_variable, token.name)
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
        unless scope.lookup(:global_variable, token.name)
          error(
            "undefined global variable #{token.name}",
            token.line,
            token.column
          )
        end
      end

      ##
      # Called when a constant is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_constant(token)
        if !scope.lookup(:constant, token.name)
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
      # Called after a method or undefined local variable is found and has been
      # processed.
      #
      # @param [Rlint::Token::MethodToken] token
      #
      def after_method(token)
        method_exists   = scope.lookup(call_type, token.name)
        var_exists      = scope.lookup(:local_variable, token.name)
        included_method = false

        # Determine if the called method comes from an included module.
        @included_modules.each do |name|
          found = scope.lookup(:constant, name).lookup(call_type, token.name)

          if found
            included_method = true

            break
          end
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
            type  = !value.nil? ? TYPE_CLASSES[value.type] : nil

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
        and (!method_exists and !var_exists and !included_method)
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

      private

      ##
      # Returns the current scope. This method is primarily used to make the
      # code in this class a bit more pleasant to read.
      #
      # @return [Rlint::Scope]
      #
      def scope
        return @scopes.length > 0 ? @scopes[-1] : @global_scope
      end

      ##
      # Returns the last method call type to use.
      #
      # @return [Symbol]
      #
      def call_type
        return @call_types.length > 0 ? @call_types[-1] : :instance_method
      end

      ##
      # Given an Array of constant names (e.g. the names of a constant path)
      # this method will return the scope to use for the last segment.
      #
      # @param  [Array] segments The name segments to use for the lookup.
      # @return [Rlint::Scope|NilClass]
      #
      def resolve_scope(segments)
        resolved = scope

        segments.each do |name|
          break unless resolved

          resolved = resolved.lookup(:constant, name)
        end

        return resolved
      end
    end # Definitions
  end # Analyze
end # Rlint
