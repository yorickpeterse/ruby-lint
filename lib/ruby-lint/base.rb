module RubyLint
  ##
  # Hash containing various Node types and the associated Ruby classes.
  #
  # @return [Hash]
  #
  RUBY_CLASSES = {
    :str    => 'String',
    :sym    => 'Symbol',
    :int    => 'Fixnum',
    :float  => 'Float',
    :regexp => 'Regexp',
    :array  => 'Array',
    :hash   => 'Hash',
    :irange => 'Range',
    :erange => 'Range',
    :lambda => 'Proc'
  }

  ##
  # Returns a definition for a given node type.
  #
  # @param [Symbol] type
  # @return [RubyLint::Definition::RubyObject]
  # @raise ArgumentError Raised when an invalid type was specified.
  #
  def self.definition_for_type(type)
    ruby_class = RUBY_CLASSES[type]

    raise(ArgumentError, "The type #{type} is invalid") unless ruby_class

    return RubyLint::VirtualMachine.global_constant(ruby_class)
  end

  ##
  # Provides a simple DSL for configuring ruby-lint.
  #
  # @yieldparam [RubyLint::Configuration]
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
