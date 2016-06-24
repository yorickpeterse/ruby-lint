module RubyLint
  ##
  # The ConstantLoader is an iterator class (using {RubyLint::Iterator}) that
  # iterates over an AST and tries to load the corresponding built-in
  # definitions. For example, if it finds a constant node for the `ERB` class
  # it will apply the definitions for `ERB` to the ones set in
  # {RubyLint::ConstantLoader#definitions}.
  #
  # This class also takes care of bootstrapping the target definitions so that
  # the bare minimum definitions (e.g. Module and Object) are always available.
  # Global variables are also bootstrapped.
  #
  # @!attribute [r] loaded
  #  @return [Set] Set containing the loaded constants.
  #
  # @!attribute [r] definitions
  #  @return [RubyLint::Definition::RubyObject]
  #
  # @!attribute [r] module_nesting
  #  @return [Array<String>]
  #
  class ConstantLoader < Iterator
    attr_reader :loaded, :definitions, :module_nesting

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
      '$!', '$$', '$&', '$\'', '$*', '$+', '$,', '$-0', '$-F', '$-I', '$-K',
      '$-W', '$-a', '$-d', '$-i', '$-l', '$-p', '$-v', '$-w', '$.', '$/', '$0',
      '$1', '$2', '$3', '$4', '$5', '$6', '$7', '$8', '$9', '$:', '$;', '$<',
      '$=', '$>', '$?', '$@', '$DEBUG', '$FILENAME', '$KCODE',
      '$LOADED_FEATURES', '$LOAD_PATH', '$PROGRAM_NAME', '$SAFE', '$VERBOSE',
      '$\"', '$\\', '$_', '$`', '$stderr', '$stdin', '$stdout', '$~'
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
    # @param [Array<RubyLint::AST::Node>] ast
    #
    def run(ast)
      ast.each { |node| iterate(node) }
    end

    ##
    # Called after a new instance of the class is created.
    #
    def after_initialize
      @loaded = Set.new
      @module_nesting = []
    end

    def on_module(node)
      name, _body = *node
      cp = ConstantPath.new(name)

      @module_nesting.push(cp.to_s)
    end


    def after_module(node)
      @module_nesting.pop
    end

    ##
    # @param [RubyLint::Node] node
    #
    def on_const(node)
      load_nested_constant(ConstantPath.new(node).root_node[1])
    end

    ##
    # Checks if the given constant is already loaded or not.
    #
    # @param [String] constant
    # @return [TrueClass|FalseClass]
    #
    def loaded?(constant)
      return loaded.include?(constant)
    end

    ##
    # @return [RubyLint::Definition::Registry]
    #
    def registry
      return RubyLint.registry
    end

    ##
    # Tries to load the definitions for the given constant.
    # Takes into account what modules we are in to resolve the constant name.
    #
    # @param [String] constant name, possibly unqualified
    #
    def load_nested_constant(constant)
      # ["A", "B", "C"] -> ["A::B::C", "A::B", "A"]
      namespaces = module_nesting.size.downto(1).map do |n|
        module_nesting.take(n).join("::")
      end

      namespaces.each do |ns|
        load_constant("#{ns}::#{constant}")
      end
      load_constant(constant)
    end

    ##
    # Tries to load the definitions for the given constant.
    #
    # @param [String] constant
    #
    def load_constant(constant)
      return if loaded?(constant)

      registry.load(constant)

      return unless registry.include?(constant)

      apply(constant)
    end

    private

    ##
    # @param [String] constant
    #
    def apply(constant)
      loaded << constant

      registry.apply(constant, definitions)
    end
  end # ConstantLoader
end # RubyLint
