module RubyLint
  ##
  # @return [RubyLint::GlobalScope]
  #
  def self.global_scope
    return @global_scope ||= Definition::RubyObject.new(
      :name => 'global',
      :type => :global
    )
  end

  ##
  # Looks up the given constant in the global scope. If it does not exist this
  # method will try to load it from one of the existing definitions.
  #
  # @param [String] name
  # @return [RubyLint::Definition::RubyObject]
  #
  def self.global_constant(name)
    found = global_scope.lookup(:constant, name)

    if !found and !constant_loader.loaded?(name)
      constant_loader.load(name)

      found = global_scope.lookup(:constant, name)
    end

    return found
  end

  ##
  # Provides a simple DSL for configuring ruby-lint.
  #
  def self.configure
    yield configuration
  end

  ##
  # @return [RubyLint::Configuration]
  #
  def self.configuration
    return @configuration ||= Configuration.new
  end

  ##
  # @param [RubyLint::Configuration] config
  #
  def self.configuration=(config)
    @configuration = config
  end

  ##
  # @return [RubyLint::ConstantLoader]
  #
  def self.constant_loader
    return @constant_loader ||= ConstantLoader.new
  end

  ##
  # Returns an Array of locations from which to load configuration files.
  #
  # @return [Array]
  #
  def self.configuration_files
    return [
      File.join(Dir.pwd, 'ruby-lint.rb'),
      File.expand_path('~/.ruby-lint.rb', __FILE__)
    ]
  end

  ##
  # Tries to load a configuration file from one of the locations in
  # {RubyLint.configuration_files}.
  #
  def self.load_configuration
    configuration_files.each do |path|
      if File.file?(path)
        require(path)
        break
      end
    end
  end
end # RubyLint
