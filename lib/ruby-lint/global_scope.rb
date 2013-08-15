module RubyLint
  module GlobalScope
    ##
    # @return [RubyLint::Definition::RubyObject]
    #
    def self.definitions
      return @definitions ||= Definition::RubyObject.new(
        :name => 'global',
        :type => :global
      )
    end

    ##
    # Looks up the given constant in the global scope. If it does not exist
    # this method will try to load it from one of the existing definitions.
    #
    # @param [String] name
    # @return [RubyLint::Definition::RubyObject]
    #
    def self.global_constant(name)
      found = definitions.lookup_constant_path(name)

      if !found and !constant_loader.loaded?(name)
        constant_loader.load_constant(name)

        found = definitions.lookup_constant_path(name)
      end

      return found
    end

    ##
    # Creates a new proxy for a global constant.
    #
    # @param [String] name The name of the constant, can include an entire
    #  constant path in the form of `Foo::Bar`.
    # @return [RubyLint::Definition::ConstantProxy]
    #
    def self.constant_proxy(name)
      return Definition::ConstantProxy.new(definitions, name)
    end

    ##
    # @return [RubyLint::ConstantLoader]
    #
    def self.constant_loader
      return @constant_loader ||= ConstantLoader.new
    end
  end # GlobalScope
end # RubyLint
