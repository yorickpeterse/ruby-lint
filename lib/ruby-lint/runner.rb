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

      parser.consumer = proc do |diag|
        report_diagnostic(diag, report)

        # FIXME: there's a bug in the pure Ruby version of Racc causing it hang
        # after detecting a syntax error (it stays forever in recovery mode).
        # To work around this we'll have to bail out after detecting the first
        # syntax error.
        return presenter.present(report)
      end

      files.each do |file|
        ast, comments = parse_file(parser, file)

        definitions = process_external_files(configuration.directories, ast)

        vm = run_vm(ast, comments, definitions)

        run_analysis(ast, vm, report)
      end

      return presenter.present(report)
    end

    private

    ##
    # Parses the given file and returns an Array containing all the associated
    # AST nodes and comments.
    #
    # @param [RubyLint::Parser] parser
    # @param [String] file
    # @return [Array]
    #
    def parse_file(parser, file)
      return parser.parse(File.read(file), file)
    end

    ##
    # Processes external Ruby files using {RubyLint::FileLoader}.
    #
    # @param [Array] directories
    # @param [RubyLint::AST::Node] root_ast
    # @return [RubyLint::Definition::RubyObject]
    #
    def process_external_files(directories, root_ast)
      loader      = FileLoader.new(:directories => directories)
      definitions = []

      loader.iterate(root_ast)

      loader.nodes.each do |(ast, comments)|
        definitions << run_vm(ast, comments).definitions
      end

      return definitions
    end

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
    # @param [Array] nodes
    # @param [Hash] comments
    # @param [Array] extra_definitions
    # @return [RubyLint::VirtualMachine]
    #
    def run_vm(nodes, comments, extra_definitions = [])
      vm = RubyLint::VirtualMachine.new(
        :comments          => comments,
        :extra_definitions => extra_definitions
      )

      vm.run(nodes)

      return vm
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
