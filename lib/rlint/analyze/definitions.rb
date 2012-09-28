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
      # @see Rlint::Callback#initialize
      #
      def initialize(*args)
        super

        @global_scope = Scope.new(nil, true)
        @scopes       = [Scope.new(@global_scope)]
      end

      ##
      # Called when a value is assigned to a variable.
      #
      # @param [Rlint::Token::AssignmentToken] token
      #
      def on_assignment(token)
        if token.type == :global_variable
          scope = @global_scope
        else
          scope = @scopes[-1]
        end

        scope.add(token.type, token.name, token.value)
      end

      ##
      # Called when a new method is defined.
      #
      # @param [Rlint::Token::MethodDefinitionToken] token
      #
      def on_method_definition(token)
        scope.add(:instance_method, token.name, token)

        @scopes << Scope.new(scope)
      end

      ##
      # Called when a class definition is found.
      #
      # @param [Rlint::Token::ClassToken] token
      #
      def on_class(token)
        parent    = scope.lookup(:constant, token.parent.join('::'))
        new_scope = Scope.new(parent)

        scope.symbols[:constant].each do |const, data|
          new_scope.symbols[:constant][const] = data
        end

        scope.add(:constant, token.name.join('::'), new_scope)

        @scopes << new_scope
      end

      ##
      # Called after a class definition was found and processed.
      #
      # @see Rlint::Analyze::Definitions#on_class
      #
      def after_class(token)
        @scopes.pop
      end

      ##
      # Called after a method definition has been processed.
      #
      # @see Rlint::Analyze::Definitions#on_method_definition
      #
      def after_method_definition(token)
        @scopes.pop
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
      # Called after a method or undefined local variable is found and has been
      # processed.
      #
      # @param [Rlint::Token::MethodToken] token
      #
      def after_method(token)
        method_exists   = scope.lookup(:instance_method, token.name)
        var_exists      = scope.lookup(:local_variable, token.name)

        # TODO: this clearly won't work for other methods that have been
        # included into the global scope.
        kernel_method = scope.lookup(:constant, 'Kernel') \
          .lookup(:method, token.name)

        # Method called on an object.
        if token.receiver
          key = :instance_method

          # Variables that aren't constants.
          if token.receiver.is_a?(Token::VariableToken) \
          and token.receiver.type != :constant
            value = scope.lookup(token.receiver.type, token.receiver.name)
            type  = TYPE_CLASSES[value.type]

            # Extract the class from a method call.
            if value.respond_to?(:receiver)
              while value.respond_to?(:receiver)
                value = value.receiver
              end

              type = value.name
            end

          # Ruby values being used directly (e.g. `'foo'.upcase`).
          elsif TYPE_CLASSES.key?(token.receiver.type)
            type = TYPE_CLASSES[token.receiver.type]

          # Constants and everything else.
          else
            key  = :method
            type = token.receiver.name
          end

          # Retrieve the constant to check for the existence of the method.
          found = scope.lookup(:constant, type)

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

      private

      ##
      # Returns the current scope. This method is primarily used to make the
      # code in this class a bit more pleasant to read.
      #
      # @return [Rlint::Scope]
      #
      def scope
        return @scopes[-1]
      end
    end # Definitions
  end # Analyze
end # Rlint
