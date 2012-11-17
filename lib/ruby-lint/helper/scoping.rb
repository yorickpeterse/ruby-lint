module RubyLint
  module Helper
    ##
    # {RubyLint::Helper::Scoping} is a helper module that can be used to more
    # easily access scoping related information in subclasses of
    # {RubyLint::Callback}.
    #
    # Note that unlike {RubyLint::Helper::DefinitionResolver} this method does
    # not automatically update the `@scopes` array mentioned below, it merely
    # creates the required variables and provides a few helper methods.
    #
    # ## Methods
    #
    # This module provides two methods:
    #
    # * scope: a method that can be used to retrieve the current
    #   scope/definition.
    # * resolve_definition: a method that can be used to retrieve the
    #   scope/definition for the last constant in a constant path.
    #
    # ## Variables
    #
    # The following instance variables are created upon initializing a class
    # that includes this module:
    #
    # * `@scopes`: an array that should be updated with instance of
    #   {RubyLint::Definition} based on the current scope.
    # * `@namespace`: array containing the constant names for the current
    #   namespace.
    #
    # The following keys are set in the `@storage` instance variable:
    #
    # * `:scope`: an instance of {RubyLint::Definition} that will contain the
    #   definition list of the current block of code that's being analyzed.
    #
    module Scoping
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
      # @see RubyLint::Callback#initialize
      #
      def initialize(*args)
        super

        @scopes     = []
        @namespace  = []
        @call_types = []

        unless @storage[:scope].is_a?(Definition)
          @storage[:scope] = Definition.new(nil, :lazy => true, :kernel => true)
        end
      end

      private

      ##
      # Returns the scope/definition for the last segment in the specified
      # constant path.
      #
      # @param  [Array] path The constant path.
      # @return [RubyLint::Definition]
      #
      def resolve_definition(path)
        current = scope

        path.each do |segment|
          found   = current.lookup(:constant, segment)
          current = found if found
        end

        return current
      end

      ##
      # Checks if the specified token's name is a valid constant path.
      #
      # @param  [RubyLint::Token::VariableToken] token The token to validate.
      # @return [TrueClass|FalseClass]
      #
      def valid_constant_path?(token)
        current = scope

        token.name.each do |segment|
          found = current.lookup(:constant, segment)

          if found and token.line > found.token.line
            current = found
          else
            return false
          end
        end

        return true
      end

      ##
      # Checks if the specified type and token result in a valid
      # {RubyLint::Definition} instance.
      #
      # @param [#to_sym] type The type of data to look up.
      # @param [RubyLint::Token::VariableToken] token The token containing details
      #  about the variable.
      # @param [RubyLint::Definition] scope The scope to use for looking up the
      #  data.
      # @return [TrueClass|FalseClass]
      #
      def definition_exists?(type, token, scope = scope)
        found    = scope.lookup(type, token.name)
        has_line = found.respond_to?(:token) \
          && !found.token.nil? \
          && !found.token.line.nil?

        if !found or (has_line and found.token.line > token.line)
          return false
        else
          return true
        end
      end

      ##
      # Retrieves the class for the method receiver along with the method call
      # type. The method type is set in the first index, the definition in the
      # second one.
      #
      # @param  [RubyLint::Token::Token] token
      # @return [Array|NilClass]
      #
      def resolve_method_receiver(token)
        receiver_name  = token.name
        receiver_scope = scope
        receiver_type  = token.type
        method_type    = :instance_method

        if receiver_name.is_a?(Array)
          return unless valid_constant_path?(token)

          receiver_scope = resolve_definition(receiver_name)
        end

        if receiver_name == 'self' and @namespace
          receiver_type = @namespace[-1]

        # Method calls on variables such as `name.upcase`.
        elsif token.is_a?(Token::VariableToken) \
        and receiver_type != :constant \
        and receiver_type != :constant_path
          value = receiver_scope.lookup(receiver_type, receiver_name)

          if !value.nil? and !value.token.value.nil?
            value         = value.token.value
            receiver_type = TYPE_CLASSES[value.type]
          end

          if value.respond_to?(:receiver)
            while value.respond_to?(:receiver) and value.receiver
              value = value.receiver
            end

            receiver_type = value.name
          end

        # Methods called directly on a type such as `'name'.upcase`.
        elsif TYPE_CLASSES[receiver_type]
          receiver_type = TYPE_CLASSES[receiver_type]

        else
          method_type   = :method
          receiver_type = receiver_name.is_a?(Array) \
            ? receiver_name[-1] \
            : receiver_name
        end

        return [method_type, receiver_scope.lookup(:constant, receiver_type)]
      end

      ##
      # Returns the call type to use for method calls.
      #
      # @return [Symbol]
      #
      def call_type
        return !@call_types.empty? ? @call_types[-1] : :instance_method
      end

      ##
      # Returns the current scope. This method is primarily used to make the
      # code in this class a bit more pleasant to read.
      #
      # @return [RubyLint::Definition]
      #
      def scope
        return !@scopes.empty? ? @scopes[-1] : @storage[:scope]
      end
    end # Scoping
  end # Helper
end # RubyLint
