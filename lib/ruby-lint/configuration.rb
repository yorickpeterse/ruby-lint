module RubyLint
  ##
  # The Configuration class is used for storing configuration information used
  # when running the CLI of ruby-lint. It contains information such as the
  # reporting levels, the formatter to use and so on.
  #
  # @!attribute [rw] presenter
  #  @return [RubyLint::Presenter] The presenter to use for displaying reports.
  # @!attribute [rw] report_levels
  #  @return [Array] The reporting levels to use.
  # @!attribute [rw] analysis
  #  @return [Array] The analysis classes to enable.
  #
  class Configuration
    attr_accessor :presenter, :report_levels, :analysis

    ##
    # Provides a small block based DSL for registering multiple names.
    #
    # @param [String] namespace The namespace to store the names under.
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
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end

      @presenter     ||= RubyLint::Presenter::Text
      @report_levels ||= Report::DEFAULT_LEVELS
      @analysis      ||= default_analysis_classes
    end

    ##
    # @return [Array]
    #
    def default_analysis_classes
      return Analyze.constants.map do |const|
        Analyze.const_get(const)
      end
    end

    ##
    # Returns a report with the report levels set based on this configuration
    # instance.
    #
    # @return [RubyLint::Report]
    #
    def report
      return Report.new(report_levels)
    end

    ##
    # Set the reporting levels based on a set of CLI options.
    #
    # @param [Array] levels
    #
    def set_reporting_levels(levels)
      self.report_levels = []
      available          = self.class.names['levels']

      levels.each do |level|
        report_levels << available[level] if available[level]
      end
    end

    ##
    # Sets the presenter based on a set of CLI options.
    #
    # @param [String] name
    #
    def set_presenter(name)
      if self.class.names['presenters'][name]
        self.presenter = self.class.names['presenters'][name]
      end
    end

    ##
    # Sets the analysis classes based on a set of CLI options.
    #
    # @param [Array] names
    #
    def set_analysis(names)
      self.analysis = []
      available     = self.class.names['analysis']

      names.each do |name|
        self.analysis << available[name] if available[name]
      end
    end
  end # Configuration
end # RubyLint
