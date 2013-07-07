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
  # @!attribute [r] constant_name
  #  @return [String]
  #
  class Inspector
    attr_reader :constant, :constant_name

    ##
    # @param [String|Class] constant
    #
    def initialize(constant)
      @constant_name = constant

      if constant.is_a?(String)
        constant = resolve_constant(constant)
      end

      @constant = constant
    end

    ##
    # Returns an Array containing all child constants and their childrne
    # (recursively).
    #
    # The constants returned by this method are returned as String instances
    # containing the full path (e.g. `Encoding::BINARY` instead of `BINARY`).
    #
    # @param [Class] source
    # @param [Array] ignore
    # @return [Array<String>]
    #
    def inspect_constants(source = constant, ignore = [])
      source_name    = source.to_s
      constants      = []
      have_children  = []
      include_source = source != Object

      if include_source
        constants << source_name
        ignore     = ignore + [source.to_s]
      end

      source.constants.each do |name|
        next unless source.const_defined?(name)

        # FIXME: When using autoload/Rails in some cases this will trigger a
        # load error. I have no idea why.
        begin
          constant = source.const_get(name)
        rescue LoadError => error
          warn error.message

          next
        end

        name      = name.to_s
        full_name = include_source ? "#{source_name}::#{name}" : name

        next if ignore.include?(full_name)

        ignore    << constant
        constants << full_name

        if process_child_constants?(source, constant)
          have_children << constant
        end
      end

      have_children.each do |constant|
        inspect_constants(constant, ignore).each do |child|
          constants << child unless constants.include?(child)
        end
      end

      return constants
    end

    ##
    # Returns an Array containing all method objects sorted by their names.
    #
    # @return [Array]
    #
    def inspect_methods
      return [] unless constant.respond_to?(:methods)

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
      return [] unless constant.respond_to?(:instance_methods)

      methods = constant.instance_methods(false).map do |name|
        method_information(:instance_method, name)
      end

      return methods.sort_by(&:name)
    end

    ##
    # Returns the superclass of the current constant or `nil` if there is none.
    #
    # @return [Mixed]
    #
    def inspect_superclass
      return constant.respond_to?(:superclass) ? constant.superclass : nil
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
        output << "%-#{longest}s: %s" % [
          method.name,
          method.parameters.inspect
        ]
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
    # @param [Class] source
    # @param [Class] constant
    # @return [TrueClass|FalseClass]
    #
    def process_child_constants?(source, constant)
      return constant.respond_to?(:consts) \
        && constant != source \
        && !constant.constants.empty?
    end

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
    # @raise [ArgumentError] Raised when one of the segments doesn't exist.
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
