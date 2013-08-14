module RubyLint
  ##
  # The Configuration class is used for storing configuration information used
  # when running the CLI of ruby-lint. It contains information such as the
  # available analysis classes and report levels.
  #
  # @!attribute [r] analysis_classes
  #  @return [Array]
  #
  # @!attribute [r] report_levels
  #  @return [Array]
  #
  # @!attribute [r] presenter
  #  @return [Class]
  #
  # @!attribute [r] directories
  #  @return [Array]
  #
  # @!attribute [rw] debug
  #  @return [TrueClass|FalseClass]
  #
  # @!attribute [rw] ignore_paths
  #  @return [Array]
  #
  class Configuration
    attr_reader :analysis_classes, :report_levels, :presenter, :directories
    attr_accessor :debug, :ignore_paths

    ##
    # Returns an Array of locations from which to load configuration files.
    #
    # @return [Array]
    #
    def self.configuration_files
      return [
        File.join(Dir.pwd, 'ruby-lint.yml'),
        File.expand_path('~/.ruby-lint.yml', __FILE__)
      ]
    end

    ##
    # Creates a new configuration instance by loading a configuration file.
    #
    # @param [Array] paths The Array of configuration files to process. Only
    #  the first existing file will be loaded.
    # @return [RubyLint::Configuration]
    #
    def self.load_from_file(paths = configuration_files)
      paths.each do |path|
        if File.file?(path)
          options       = YAML.load_file(path)
          configuration = new(options)

          return configuration
        end
      end

      return new
    end

    ##
    # Provides a small block based DSL for registering multiple names.
    #
    # @param [String] scope The scope to store the names under.
    # @see RubyLint::Configuration.names
    #
    def self.register_names(scope)
      hash = {}

      yield hash

      names[scope] = hash
    end

    ##
    # Returns a Hash used for storing values and their human readable names.
    # This Hash is primarily used for the CLI.
    #
    # @return [Hash]
    #
    def self.names
      return @names ||= {}
    end

    ##
    # @param [Hash] options
    #
    def initialize(options = {})
      @debug = false

      options.each do |key, value|
        setter = "#{key}="

        if respond_to?(setter)
          send(setter, value)
        end
      end

      @analysis_classes ||= default_analysis_classes
      @report_levels    ||= default_report_levels
      @presenter        ||= default_presenter
      @directories      ||= default_directories
      @ignore_paths     ||= []
    end

    ##
    # Requires a list of files.
    #
    # @param [Array] files
    #
    def requires=(files)
      files.each { |file| require(file) }
    end

    ##
    # Sets a list of the enabled report levels.
    #
    # @param [Array] given The report levels specified by the user.
    # @return [Array]
    #
    def report_levels=(given)
      available = self.class.names['levels']
      levels    = []

      given.each do |level|
        levels << available[level] if available[level]
      end

      if levels.empty?
        levels = default_report_levels
      end

      @report_levels = levels
    end

    ##
    # Sets the presenter to use.
    #
    # @param [String] name The friendly name of the presenter as set by the
    #  user.
    # @return [RubyLint::Presenter]
    # @raise ArgumentError Raised when an invalid presenter is specified.
    #
    def presenter=(name)
      found = self.class.names['presenters'][name]

      if found
        @presenter = found
      else
        raise ArgumentError, "Invalid presenter: #{name}"
      end
    end

    ##
    # Sets a collection of the analysis constants to use.
    #
    # @param [Array] names The analysis names as given by the user.
    # @return [Array]
    #
    def analysis_classes=(names)
      classes   = []
      available = self.class.names['analysis']

      names.each do |name|
        classes << available[name] if available[name]
      end

      if classes.empty?
        classes = default_analysis_classes
      end

      @analysis_classes = classes
    end

    ##
    # Sets the directories to scan for external Ruby files using
    # {RubyLint::FileLoader}.
    #
    # @param [Array] directories
    #
    def directories=(directories)
      directories.each do |dir|
        unless File.directory?(dir)
          raise ArgumentError, "The directory #{dir} does not exist"
        end
      end

      @directories = directories
    end

    ##
    # Returns the default (= all) analysis classes to use.
    #
    # @return [Array]
    #
    def default_analysis_classes
      return self.class.names['analysis'].values
    end

    ##
    # @return [Array]
    #
    def default_report_levels
      return RubyLint::Report::DEFAULT_LEVELS
    end

    ##
    # @return [Class]
    #
    def default_presenter
      return RubyLint::Presenter::Text
    end

    ##
    # @return [Array]
    #
    def default_directories
      return [Dir.pwd]
    end
  end # Configuration
end # RubyLint
