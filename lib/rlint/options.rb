module Rlint
  ##
  # {Rlint::Options} is a class that can be used to configure various parts of
  # Rlint such as what formatter to use, the reporting levels, etc.
  #
  class Options
    ##
    # The reporting formatter to use, set to {Rlint::Formatter::Text} by
    # default.
    #
    # @return [Rlint::Formatter]
    #
    attr_accessor :formatter

    ##
    # The enabled reporting levels. See {Rlint::Report#levels} and
    # {Rlint::Report#initialize} for more information.
    #
    # @return [Array]
    #
    attr_accessor :levels

    ##
    # Array of classes to use for analyzing code. By default all the classes
    # defined under {Rlint::Analyze} are used.
    #
    # @return [Array]
    #
    attr_accessor :analyzers

    ##
    # Sets the default values for various options.
    #
    def initialize
      @formatter = Rlint::Formatter::Text
      @levels    = Rlint::Report::DEFAULT_LEVELS
      @analyzers = Rlint::Analyze.constants.map do |c|
        Rlint::Analyze.const_get(c)
      end
    end
  end # Options

  @options = Options.new

  class << self; attr_reader :options; end
end # Rlint
