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

        extra_ast, extra_comments = process_external_files(
          configuration.directories,
          ast
        )

        nodes    = extra_ast + [ast]
        comments = comments.merge(extra_comments)

        vm = run_vm(nodes, comments)

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
    # Processes external Ruby files using {RubyLint::FileLoader}. The return
    # value is a collection of AST nodes and a Hash containing all the
    # associated comments.
    #
    # @param [Array] directories
    # @param [RubyLint::AST::Node] root_ast
    # @return [Array]
    #
    def process_external_files(directories, root_ast)
      loader = FileLoader.new(
        :directories => directories,
        :debug       => configuration.debug
      )

      nodes    = []
      comments = {}

      loader.iterate(root_ast)

      loader.nodes.each do |(ast, cmts)|
        nodes << ast

        comments = comments.merge(cmts)
      end

      return nodes, comments
    end

    ##
    # @param [Parser::Diagnostic] diagnostic
    # @param [RubyLint::Report] report
    #
    def report_diagnostic(diagnostic, report)
      loc    = diagnostic.location
      buffer = loc.source_buffer

      report.add(
        :level   => :error,
        :message => diagnostic.message,
        :line    => loc.line,
        :column  => loc.column,
        :file    => buffer.name
      )
    end

    ##
    # @param [Array] nodes
    # @param [Hash] comments
    # @return [RubyLint::VirtualMachine]
    #
    def run_vm(nodes, comments)
      vm = RubyLint::VirtualMachine.new(:comments => comments)

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
