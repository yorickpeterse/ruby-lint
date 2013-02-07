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
    # and the RubyMethod attributes to store them in.
    #
    # @return [Hash]
    #
    PARAMETER_MAPPING = {
      :req   => :arguments,
      :opt   => :optional_arguments,
      :rest  => :rest_argument,
      :block => :block_argument
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

      options  = {:ancestors => false}.merge(options)
      constant = source.const_get(name)
      name_s   = name.to_s

      unless constant.respond_to?(:instance_methods)
        constant = constant.class
      end

      definition = Definition::RubyObject.new(
        :name     => name_s,
        :type     => :constant,
        :lazy     => true,
        :constant => constant,
        :imported => true
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
          :type     => :global_variable,
          :name     => var.to_s,
          :imported => true
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
        visibility = method_visibility(collection)
        options    = method_options(name, visibility)

        method.parameters.each_with_index do |param, index|
          key        = PARAMETER_MAPPING[param[0]]
          param_name = (param[1] || param[0].to_s + "_#{index}").to_s
          param      = Definition::RubyObject.new(
            :type => :local_variable,
            :name => param_name
          )

          if options[key].is_a?(Array)
            options[key] << param
          else
            options[key] = param
          end
        end

        definitions << Definition::RubyMethod.new(options)
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

    ##
    # Returns a Hash containing the various options to set for an imported
    # method.
    #
    # @param [#to_s] name
    # @param [Symbol] visibility
    # @return [Hash]
    #
    def self.method_options(name, visibility)
      options = {
        :name       => name.to_s,
        :type       => :method_definition,
        :visibility => visibility,
        :imported   => true
      }

      return options.merge(Definition::RubyMethod.default_arguments)
    end

    ##
    # Returns the method visibility of a method based on the method getter.
    #
    # @param [Symbol] method The name of the method that was used to access
    #  a method collection.
    # @return [Symbol]
    #
    def self.method_visibility(method)
      [:protected, :private].each do |key|
        return key if method =~ /^#{key}/
      end

      return :public
    end
  end # Importer
end # RubyLint
