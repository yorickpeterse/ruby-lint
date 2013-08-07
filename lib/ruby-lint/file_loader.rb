module RubyLint
  ##
  # {RubyLint::FileLoader} iterates over an AST and given a constant node will
  # try to find the corresponding filepath using {RubyLint::FileScanner}.
  #
  # @!attribute [r] file_scanner
  #  @return [RubyLint::FileScanner]
  #
  # @!attribute [r] parser
  #  @return [RubyLint::Parser]
  #
  # @!attribute [r] nodes
  #  @return [Array] A list of extra nodes (and their comments) a VM instance
  #   should process before processing the file being analyzed.
  #
  # @!attribute [r] debug
  #  @return [TrueClass|FalseClass]
  #
  # @!attribute [r] paths
  #  @return [Array]
  #
  class FileLoader < Iterator
    include Helper::ConstantPaths

    attr_reader :file_scanner, :parser, :nodes, :comments, :debug, :paths

    ##
    # Called after a new instance of this class is created.
    #
    def after_initialize
      @file_scanner = FileScanner.new(@directories)
      @parser       = Parser.new
      @nodes        = []
      @paths        = []
    end

    ##
    # @param [RubyLint::AST::Node] node
    #
    def on_const(node)
      constant_path = constant_segments(node).join('::')
      files         = file_scanner.scan(constant_path)

      paths << node.file

      files.each do |path|
        next if paths.include?(path)

        log_file(path)

        ast, comments = parse_file(path)

        nodes << [ast, comments]
        paths << path

        iterate(ast)
      end
    end

    private

    ##
    # @param [String] path
    # @return [Array]
    #
    def parse_file(path)
      return parser.parse(File.read(path), path)
    end

    ##
    # @param [String] path
    #
    def log_file(path)
      STDERR.puts "Parsing extra file: #{path}" if debug
    end
  end # FileLoader
end # RubyLint
