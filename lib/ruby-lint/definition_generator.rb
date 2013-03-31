module RubyLint
  ##
  # Internal class used for generating a set of definitions using an ERB
  # template.
  #
  # @!attribute [r] inspector
  #  @return [RubyLint::Inspector]
  # @!attribute [r] template
  #  @return [String]
  #
  class DefinitionGenerator
    attr_reader :inspector, :template

    ##
    # @param [String] constant
    # @param [String] template
    #
    def initialize(constant, template)
      @inspector = Inspector.new(constant)
      @template  = template
    end

    ##
    # Generates the template and returns it as a String.
    #
    # @return [String]
    #
    def generate
      erb_template = ERB.new(template, nil, '-')
      methods      = {:method => {}, :instance_method => {}}
      arg_mapping  = argument_mapping

      constant   = inspector.constant_name
      superclass = inspector.constant.superclass rescue nil
      inspected  = inspected_methods

      inspected.each do |type, _methods|
        _methods.each do |method|
          args = []

          method.parameters.each do |arg|
            args << {:method => arg_mapping[arg[0]], :name => arg[1]}
          end

          methods[type][method.name] = args
        end
      end

      binding = create_binding(constant, superclass, methods)

      return erb_template.result(binding)
    end

    private

    ##
    # @return [Hash]
    #
    def inspected_methods
      return {
        :method          => inspector.inspect_methods,
        :instance_method => inspector.inspect_instance_methods
      }
    end

    ##
    # @return [Hash]
    #
    def argument_mapping
      return {
        :req   => :argument,
        :opt   => :optional_argument,
        :rest  => :rest_argument,
        :block => :block_argument
      }
    end

    ##
    # @param [Class] constant
    # @param [Class] superclass
    # @param [Hash] methods
    # @return [Binding]
    #
    def create_binding(constant, superclass, methods)
      return Struct.new(:constant, :superclass, :methods) \
        .new(constant, superclass, methods) \
        .send(:binding)
    end
  end # DefinitionGenerator
end # RubyLint
