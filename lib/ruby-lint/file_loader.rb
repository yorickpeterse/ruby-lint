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
  class FileLoader < Iterator
    include Helper::ConstantPaths

    attr_reader :file_scanner, :parser, :nodes, :comments

    ##
    # Called after a new instance of this class is created.
    #
    def after_initialize
      @file_scanner = FileScanner.new(@directories)
      @parser       = Parser.new
      @nodes        = []
    end

    ##
    # @param [RubyLint::AST::Node] node
    #
    def on_const(node)
      constant_path = constant_segments(node).join('::')

      file_scanner.scan(constant_path).each do |path|
        code          = File.read(path)
        ast, comments = parser.parse(code, path)

        @nodes << [ast, comments]
      end
    end
  end # FileLoader
end # RubyLint
