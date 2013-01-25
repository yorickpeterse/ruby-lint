module RubyLint
  ##
  # {RubyLint::Options} is a class that can be used to configure various parts of
  # RubyLint such as what formatter to use, the reporting levels, etc.
  #
  class Options
    ##
    # Array containing the analyzer classes that are always enabled. The order
    # of these classes is preserved.
    #
    # @return [Array]
    #
    REQUIRED_ANALYZERS = [DefinitionsBuilder]

    ##
    # The reporting formatter to use, set to {RubyLint::Formatter::Text} by
    # default.
    #
    # @return [RubyLint::Formatter]
    #
    attr_accessor :formatter

    ##
    # The enabled reporting levels. See {RubyLint::Report#levels} and
    # {RubyLint::Report#initialize} for more information.
    #
    # @return [Array]
    #
    attr_accessor :levels

    ##
    # Array of classes to use for analyzing code. By default all the classes
    # defined under {RubyLint::Analyze} are used.
    #
    # @return [Array]
    #
    attr_accessor :analyzers

    ##
    # Sets the default values for various options.
    #
    def initialize
      @formatter = Formatter::Text
      @levels    = Report::DEFAULT_LEVELS
      @analyzers = REQUIRED_ANALYZERS.dup

      Analyze.constants.each do |c|
        const = Analyze.const_get(c)

        @analyzers << const unless @analyzers.include?(const)
      end
    end
  end # Options

  @options = Options.new

  class << self; attr_reader :options; end
end # RubyLint
