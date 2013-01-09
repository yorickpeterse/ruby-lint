module RubyLint
  ##
  # Module that can be used to import various constants and variables from the
  # currently running Ruby environment. Importing data from the current
  # environment makes it possible to retrieve basic information about data that
  # can't be extracted using {RubyLint::Parser} such as C extensions.
  #
  module Importer
    ##
    # Boolean that indicates if the Config constant should be ignored or not.
    #
    # @return [TrueClass|FalseClass]
    #
    IGNORE_CONFIG = Object.const_defined?(:RbConfig)

    ##
    # Hash containing all the source Ruby methods to retrieve methods and the
    # keys to store them under.
    #
    # @return [Hash]
    #
    METHOD_KEYS = {
      :methods                  => :method,
      :instance_methods         => :instance_method,
      :private_methods          => :method,
      :private_instance_methods => :instance_method
    }

    ##
    # Hash containing the parameter types as returned by `Method#parameters`
    # and the indexes of the parameters list in which they should be stored.
    #
    # @return [Hash]
    #
    PARAMETER_INDEXES = {
      :req   => 0,
      :opt   => 1,
      :rest  => 2,
      :block => 4
    }

    ##
    # Returns a definition list containing the methods of the specified
    # constant.
    #
    # @param [#to_sym] name The name of the constant to import.
    # @param [Mixed] source The source constant to use for the
    #  `const_get` call. Set to `Object` by default.
    # @param [Hash] options Hash containing extra options.
    # @option options [TrueClass|FalseClass] :ancestors When set to `true`
    #  ancestor methods of an object will be imported as well.
    # @return [Hash]
    #
    def self.import(name, source = Object, options = {})
      name = name.to_sym

      return if ignore?(source, name)

      options    = {:ancestors => false}.merge(options)
      constant   = source.const_get(name)
      name_s     = name.to_s
      definition = Definition::RubyObject.new(
        Node.new(:constant, [name_s]),
        :lazy     => true,
        :constant => source
      )

      METHOD_KEYS.each do |collection, getter|
        method_definitions(constant, collection, getter, options[:ancestors]) \
        .each do |method|
          definition.add(getter, method.name, method)
        end
      end

      return definition
    end

    ##
    # Returns a list of {RubyLint::Node} instances for the glboal variables in
    #  the specified constant.
    #
    # @param [#to_sym] name The name of the constant to import.
    # @param [Class] constant The source constant
    # @return [Array]
    #
    def self.import_global_variables(name, constant = Object)
      variables = []
      found     = constant.const_get(name)

      return variables unless found

      found.global_variables.map do |var|
        variables << Definition::RubyObject.new(
          Node.new(:global_variable, [var.to_s])
        )
      end

      return variables
    end

    private

    ##
    # Returns an array of method definitions for the given constant.
    #
    # @param [Class] source The constant to import methods from.
    # @param [Symbol] collection The name of the method call that returns a
    #  list of method names to import.
    # @param [Symbol] getter The name of the getter method to use for
    #  retrieving a single method.
    # @param [TrueClass|FalseClass] ancestors When set to `true` ancestor
    #  methods will be imported as well.
    # @return [Array]
    #
    def self.method_definitions(source, collection, getter, ancestors = false)
      definitions = []

      source.send(collection, ancestors).each do |name|
        method     = source.send(getter, name)
        visibility = source =~ /^private/ ? :private : :public
        parameters = [[], [], nil, nil, nil]

        method.parameters.each_with_index do |param, index|
          # Extract the parameter index and generate the name. If no name is
          # found one will be generated based on the parameter type and the
          # current index.
          index      = PARAMETER_INDEXES[param[0]]
          param_name = (param[1] || param[0].to_s + "_#{index}").to_s
          param      = Node.new(:local_variable, [param_name])

          if parameters[index].is_a?(Array)
            parameters[index] << param
          else
            parameters[index] = param
          end
        end

        definitions << Definition::RubyMethod.new(
          Node.new(
            :method_definition,
            [name.to_s, parameters, nil, Node.new(:body)]
          ),
          :visibility => visibility
        )
      end

      return definitions
    end

    ##
    # Checks if the specified constant should be ignored.
    #
    # @param [Mixed] source The source constant.
    # @param [Symbol] name The name of the constant.
    # @return [TrueClass|FalseClass]
    #
    def self.ignore?(source, name)
      if (name == :Config and IGNORE_CONFIG) or !source.const_defined?(name)
        return true
      end

      return false
    end
  end # Importer
end # RubyLint
