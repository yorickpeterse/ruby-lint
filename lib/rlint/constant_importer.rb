module Rlint
  ##
  # {Rlint::ConstantImporter} is a module that can be used to create a list of
  # method definitions (using {Rlint::Token::MethodDefinitionToken} for a
  # supplied list of constant names.
  #
  module ConstantImporter
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
    # and the attributes they should be stored in in an instance of
    # {Rlint::Token::ParametersToken}.
    #
    # @return [Hash]
    #
    PARAMETER_KEYS = {
      :req   => :value,
      :opt   => :optional,
      :rest  => :rest,
      :block => :block
    }

    ##
    # Imports the methods of a given list of constant names and returns a Hash
    # containing instances of {Rlint::Scope} for each imported constant.
    #
    # @param  [Array] constants An array of constant to import.
    # @param  [Mixed] source_constant The source constant to use for the
    #  `const_get` call. Set to `Object` by default.
    # @return [Hash]
    #
    def self.import(constants, source_constant = Object)
      imported = {}

      constants.each do |name|
        next if name == :Config and IGNORE_CONFIG

        const = source_constant.const_get(name)

        next unless const

        name  = name.to_s
        scope = Scope.new(nil, true, false, const)

        METHOD_KEYS.each do |source, target|
          next unless const.respond_to?(source)

          const.send(source).each do |method|
            token = Token::MethodDefinitionToken.new(:name => method.to_s)

            if source =~ /^private/
              token.visibility = :private
            end

            # Import all the parameters.
            const.send(target, method).parameters.each do |param|
              param_target = PARAMETER_KEYS[param[0]]

              variable = Token::VariableToken.new(
                :name => param[1].to_s,
                :type => :local_variable
              )

              # Determine if the parameter should be appended to a list or set
              # as the sole parameter.
              if token.parameters.send(param_target).is_a?(Array)
                token.parameters.send(param_target).push(variable)
              else
                token.parameters.send("#{param_target}=", variable)
              end
            end

            scope.add(target, method.to_s, Definition.new(token))
          end
        end

        imported[name] = scope
      end

      return imported
    end
  end # ConstantImporter
end # Rlint
