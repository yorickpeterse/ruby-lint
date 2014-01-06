module RubyLint
  ##
  # The ConstantLoader class tries to pre-load various constants in a given
  # file before the definitions are being built and analysis is performed.
  #
  # Note that this pre-loader is rather basic and as such there are chances you
  # still have to manually require definitions to ensure that they are being
  # used.
  #
  # @!attribute [r] loaded
  #  @return [Hash] Hash containing the loaded constants.
  #
  # @!attribute [r] definitions
  #  @return [RubyLint::Definition::RubyObject]
  #
  class ConstantLoader < Iterator
    attr_reader :loaded, :definitions

    ##
    # List of directories to search for definition files.
    #
    # @return [Array]
    #
    LOAD_PATH = [
      File.expand_path('../definitions/core', __FILE__),
      File.expand_path('../definitions/rails', __FILE__)
    ]

    ##
    # Built-in definitions that should be bootstrapped.
    #
    # @return [Array]
    #
    BOOTSTRAP_CONSTS = %w{Module Class Kernel BasicObject Object}

    ##
    # List of global variables that should be bootstrapped.
    #
    # @return [Array]
    #
    BOOTSTRAP_GVARS = [
      "$!", "$$", "$&", "$'", "$*", "$+", "$,", "$-0", "$-F", "$-I", "$-K",
      "$-W", "$-a", "$-d", "$-i", "$-l", "$-p", "$-v", "$-w", "$.", "$/", "$0",
      "$1", "$2", "$3", "$4", "$5", "$6", "$7", "$8", "$9", "$:", "$;", "$<",
      "$=", "$>", "$?", "$@", "$DEBUG", "$FILENAME", "$KCODE",
      "$LOADED_FEATURES", "$LOAD_PATH", "$PROGRAM_NAME", "$SAFE", "$VERBOSE",
      "$\"", "$\\", "$_", "$`", "$stderr", "$stdin", "$stdout", "$~"
    ]

    ##
    # Bootstraps various core definitions.
    #
    def bootstrap
      types = VariablePredicates::RUBY_CLASSES.values

      (BOOTSTRAP_CONSTS | types).each do |name|
        load_constant(name)
      end

      BOOTSTRAP_GVARS.each do |gvar|
        definitions.define_global_variable(gvar)
      end
    end

    ##
    # Bootstraps various core definitions (Fixnum, Object, etc) and loads the
    # extra constants referred in the supplied AST.
    #
    # @param [Array<RubyLint::AST::Node] ast
    #
    def run(ast)
      ast.each { |node| iterate(node) }
    end

    ##
    # Called after a new instance of the class is created.
    #
    def after_initialize
      @loaded = {}
    end

    ##
    # @param [RubyLint::Node] node
    #
    def on_const(node)
      load_constant(ConstantPath.new(node).root_node[1])
    end

    ##
    # Checks if the given constant is already loaded or not.
    #
    # @param [String] constant
    # @return [TrueClass|FalseClass]
    #
    def loaded?(constant)
      return loaded.key?(constant)
    end

    ##
    # Tries to load the definitions for the given constant.
    #
    # @param [String] constant
    #
    def load_constant(constant)
      return if loaded?(constant)

      filename = constant.snake_case + '.rb'

      LOAD_PATH.each do |path|
        path = File.join(path, filename)

        if File.file?(path)
          require(path)
          loaded[constant] = true

          RubyLint.registry.apply(constant, definitions)

          break
        end
      end
    end
  end # ConstantLoader
end # RubyLint
