require 'fileutils'
require 'erb'
require_relative 'template/scope'

module RubyLint
  ##
  # The DefinitionGenerator class is used for generating definitions based on
  # the data that is available in the current Ruby runtime. Using this
  # generator the otherwise painful and time consuming task of adding
  # definitions for large projects (e.g. Ruby itself or Rails) becomes very
  # easy up to the point where it will only take a minute or two.
  #
  # Note that this generator works best on Ruby implementations that provide
  # accurate parameter information using `UnboundMethod#parameters`. Currently
  # the only implementation where this is the case is Rubinius HEAD. Both MRI
  # and Jruby provide inaccurate information.
  #
  # @!attribute [r] directory
  #  @return [String] The directory to store the generated definitions in.
  # @!attribute [r] options
  #  @return [Hash]
  # @!attribute [String] template
  #  @return [String] The filepath to the ERB template to use.
  # @!attribute [r] inspector
  #  @return [RubyLint::Inspector]
  #
  class DefinitionGenerator
    attr_reader :directory, :options, :template, :inspector

    ##
    # @param [Class] constant
    # @param [String] directory
    # @param [Hash] options
    #
    def initialize(constant, directory, options = {})
      @options   = default_options.merge(options)
      @inspector = Inspector.new(constant)
      @directory = directory
      @template  = File.read(
        File.expand_path('../template/definition.erb', __FILE__)
      )
    end

    ##
    # Generates the definitions for every constant.
    #
    def generate
      constants = inspector.inspect_constants.sort - options[:ignore]

      group_constants(constants).each do |root, names|
        filepath    = File.join(directory, "#{root.snake_case}.rb")
        definitions = []

        if File.file?(filepath) and !options[:overwrite]
          next
        end

        names.each do |name|
          current_inspector = Inspector.new(name)
          inspected_methods = inspect_methods(current_inspector)
          superclass        = nil

          if current_inspector.constant \
          and current_inspector.constant.respond_to?(:superclass)
            superclass = current_inspector.constant.superclass
          end

          variables = {
            :methods       => method_information(inspected_methods),
            :constant      => current_inspector.constant,
            :constant_name => current_inspector.constant_name,
            :superclass    => superclass
          }

          scope = Template::Scope.new(variables)
          erb   = ERB.new(template, nil, '-').result(scope.get_binding)

          definitions << erb
        end

        File.open(filepath, 'w') do |handle|
          handle.write(definitions.join("\n").strip)
        end
      end
    end

    private

    ##
    # Groups constants together based on the top level namespace segment.
    #
    # @param [Array] constants
    # @return [Hash]
    #
    def group_constants(constants)
      grouped = Hash.new { |hash, key| hash[key] = [] }

      constants.each do |name|
        root           = name.split('::')[0]
        grouped[root] << name
      end

      return grouped
    end

    ##
    # @return [Hash]
    #
    def default_options
      return {:ignore => [], :overwrite => false}
    end

    ##
    # @param [RubyLint::Inspector] inspector
    # @return [Hash]
    #
    def inspect_methods(inspector)
      return {
        :method          => inspector.inspect_methods,
        :instance_method => inspector.inspect_instance_methods
      }
    end

    ##
    # Returns a Hash containing all the instance and class methods and their
    # arguments.
    #
    # @param [Hash] inspected
    # @return [Hash]
    #
    def method_information(inspected)
      arg_mapping = argument_mapping
      info        = {:method => {}, :instance_method => {}}

      inspected.each do |type, methods|
        methods.each do |method|
          args = []

          method.parameters.each do |arg|
            args << {:method => arg_mapping[arg[0]], :name => arg[1]}
          end

          info[type][method.name] = args
        end
      end

      return info
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
  end # DefinitionGenerator
end # RubyLint
