module RubyLint
  ##
  # {RubyLint::Runner} acts as an easy to use layer around the various parts of
  # ruby-lint. Pass it some files and a {RubyLint::Configuration} object and it
  # will take care of running code analysis, formatting it, etc.
  #
  # @!attribute [r] configuration
  #  @return [RubyLint::Configuration]
  #
  class Runner
    attr_reader :configuration

    ##
    # @param [RubyLint::Configuration] configuration
    #
    def initialize(configuration)
      @configuration = configuration
    end

    ##
    # Analyses the given files and returns the report results.
    #
    # @param [Array] files
    # @return [String]
    #
    def analyze(files)
      report    = Report.new(configuration.report_levels)
      presenter = configuration.presenter.new
      parser    = Parser.new

      parser.consumer = lambda do |diag|
        report_diagnostic(diag, report)
      end

      files.each do |file|
        code = File.read(file)
        ast  = parser.parse(code, file)
        vm   = RubyLint::VirtualMachine.new

        vm.run(ast)

        run_analysis(ast, vm, report)
      end

      return presenter.present(report)
    end

    private

    ##
    # @param [Parser::Diagnostic] diagnostic
    # @param [RubyLint::Report] report
    #
    def report_diagnostic(diagnostic, report)
      loc    = diagnostic.location
      buffer = loc.source_buffer

      report.error(diagnostic.message, loc.line, loc.column, buffer.name)
    end

    ##
    # Runs all the registered analysis classes.
    #
    # @param [RubyLint::AST::Node] ast
    # @param [RubyLint::VirtualMachine] vm
    # @param [RubyLint::Report] report
    #
    def run_analysis(ast, vm, report)
      configuration.analysis_classes.each do |const|
        instance = const.new(:vm => vm, :report => report)
        instance.iterate(ast)
      end
    end
  end # Runner
end # RubyLint
