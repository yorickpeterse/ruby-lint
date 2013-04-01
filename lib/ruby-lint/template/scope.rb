module RubyLint
  module Template
    ##
    # Class used for storing variables for an ERB template without polluting
    # the namespace of the code that uses the template.
    #
    class Scope
      ##
      # @param [Hash] variables
      #
      def initialize(variables = {})
        variables.each do |name, value|
          instance_variable_set("@#{name}", value)
        end
      end

      ##
      # @return [Binding]
      #
      def get_binding
        return binding # #binding() is a private method.
      end
    end # Scope
  end # Template
end # RubyLint
