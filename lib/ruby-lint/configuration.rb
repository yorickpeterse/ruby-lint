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
  end # Configuration
end # RubyLint
