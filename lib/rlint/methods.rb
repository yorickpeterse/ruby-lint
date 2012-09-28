module Rlint
  ##
  # Hash that contains all the class and instance methods of core Ruby types
  #
  # @return [Hash]
  #
  METHODS = {}

  keys = {
    :methods          => :method,
    :instance_methods => :instance_method
  }

  # The use of the Config constant on 1.9.x triggers a warning so it should be
  # excluded.
  exclude_config = Object.const_defined?(:RbConfig)

  # Fill the list of constants with the ones provided by a standard Ruby
  # setup.
  Object.constants.each do |name|
    if (name == :Config and exclude_config) or name == :Rlint
      next
    end

    name  = name.to_s
    const = Object.const_get(name)
    scope = Scope.new

    next unless const

    # Retrieve the arity of each class/instance method
    keys.each do |source, target|
      next unless const.respond_to?(source)

      # TODO: storing all this data requires quite a bit of memory (around 8
      # megabytes). If possible this should be improved.
      const.send(source).each do |method|
        arity = const.send(target, method).arity
        token = Token::MethodDefinitionToken.new(:name => method.to_s)

        if arity > 0
          arity.times do
            token.parameters.value << nil
          end
        end

        scope.add(target, method.to_s, token)
      end
    end

    METHODS[name] = scope
  end
end # Rlint
