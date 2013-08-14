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
  #  @return [Set]
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
      @paths        = Set.new
    end

    ##
    # @param [RubyLint::AST::Node] node
    #
    def on_const(node)
      segments      = constant_segments(node)
      constant_path = segments.join('::')
      files         = file_scanner.scan(constant_path)

      paths << node.file

      files.each do |path|
        next if paths.include?(path)

        paths << path

        debug_message("Processing extra file: #{path}")

        process_file(segments[-1], path)
      end
    end

    private

    ##
    # @param [String] constant_name
    # @param [String] path
    #
    def process_file(constant_name, path)
      code = File.read(path)

      unless code.include?(constant_name)
        debug_message(
          %Q{  Skipping since "#{constant_name}" was not found in this file}
        )

        return
      end

      ast, comments = parser.parse(code, path)

      iterate(ast)

      nodes << [ast, comments]
    end

    ##
    # @param [String] message
    #
    def debug_message(message)
      STDERR.puts(message) if debug
    end
  end # FileLoader
end # RubyLint
