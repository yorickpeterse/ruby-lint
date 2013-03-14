module RubyLint
  ##
  # The Inspector class is a debugging related class primarily used for making
  # it easy to display a list of methods/constants of a given source constant.
  #
  # Note that this class is considered to be a private API and as such may
  # change without any notice.
  #
  # @!attribute [r] constant
  #  @return [Class]
  #
  class Inspector
    attr_reader :constant

    ##
    # @param [String|Class] constant
    #
    def initialize(constant)
      if constant.is_a?(String)
        constant = resolve_constant(constant)
      end

      @constant = constant
    end

    ##
    # Returns an Array containing all the child constants sorted by their
    # names.
    #
    # @return [Array]
    #
    def inspect_constants
      return constant.constants.sort
    end

    ##
    # Returns an Array containing all method objects sorted by their names.
    #
    # @return [Array]
    #
    def inspect_methods
      methods = constant.methods(false).map do |name|
        method_information(:method, name)
      end

      return methods.sort_by(&:name)
    end

    ##
    # Returns an Array containing all instance methods sorted by their names.
    #
    # @return [Array]
    #
    def inspect_instance_methods
      methods = constant.instance_methods(false).map do |name|
        method_information(:instance_method, name)
      end

      return methods.sort_by(&:name)
    end

    ##
    # Formats the list of methods in a human readable format.
    #
    # @param [Array] methods
    # @return [String]
    #
    def format_methods(methods)
      output  = []
      longest = 0

      methods.each do |method|
        longest = method.name.length if method.name.length > longest
      end

      methods.each do |method|
        output << "%-#{longest}s: %s" % [method.name, method.parameters]
      end

      return output.join("\n")
    end

    ##
    # Formats a list of constants in a human readable format.
    #
    # @param [Array] constants
    # @return [String]
    #
    def format_constants(constants)
      return constants.join("\n")
    end

    private

    ##
    # Returns the method object for the given type and name.
    #
    # @param [Symbol] type
    # @param [Symbol] name
    # @return [UnboundMethod]
    #
    def method_information(type, name)
      return constant.send(type, name)
    end

    ##
    # Converts a String based constant path into an actual constant.
    #
    # @param [String] constant
    # @return [Class]
    # @raise ArgumentError Raised when one of the segments doesn't exist.
    #
    def resolve_constant(constant)
      current = Object
      final   = nil

      constant.split('::').each do |segment|
        if current.const_defined?(segment)
          current = final = current.const_get(segment)
        else
          raise(
            ArgumentError,
            "Constant #{segment} does not exist in #{constant}"
          )
        end
      end

      return final
    end
  end # Inspector
end # RubyLint
