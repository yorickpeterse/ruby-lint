module RubyLint
  module Definition
    ##
    # RubyObject is the base definition class used for storing information
    # about Ruby definitions such as variables and methods. It provides the
    # means to store and look up data as well as lazy loading data when needed.
    #
    # ruby-lint comes with various definition classes, each serving a specific
    # purpose:
    #
    # * {RubyLint::Definition::RubyObject}: the base class for all definition
    #   classes, also used for generic data such as integers and strings.
    # * {RubyLint::Definition::RubyVariable}: definition class used
    #   specifically for variables (including constants).
    # * {RubyLint::Definition::RubyMethod}: definition class used for method
    #   definitions and method calls.
    #
    # The usage of all these classes is the same. Data can be added using
    # {RubyLint::Definition::RubyObject#add} while retrieving data is done
    # using {RubyLint::Definition::RubyObject#lookup}. Note that some classes
    # might have slightly different constructor methods.
    #
    # Each definition instance is based on an AST node created using
    # {RubyLint::Node}. While these nodes are accessible in a read-only form
    # it's generally not recommended to access them as the AST may change. In
    # most cases you will be able to get far enough using the various getters
    # provided by instance of {RubyLint::Definition::RubyObjet}.
    #
    # A simple example of creating two definitions and adding data to the first
    # one:
    #
    #     root_node = RubyLint::Node.new(:root)
    #     root_defs = RubyLint::Definition::RubyObject.new(root_node)
    #
    #     node    = RubyLint::Node.new(:constant, ['Example'])
    #     example = RubyLint::Definition::RubyObject.new(node)
    #
    #     root_defs.add(:constant, 'Example', example)
    #
    class RubyObject
      ##
      # The default class for each ruby object.
      #
      # @return [String]
      #
      DEFAULT_CLASS = 'Object'

      ##
      # Array containing items that should be looked up in the parent
      # definition if they're not found in the current one.
      #
      # @return [Array]
      #
      LOOKUP_PARENT = [
        :instance_variable,
        :class_variable,
        :global_variable,
        :method,
        :instance_method,
        :constant
      ]

      ##
      # Instance of {RubyLint::Node} that belongs to this object.
      #
      # @return [RubyLint::Node]
      #
      attr_reader :node

      ##
      # Returns the value of the object.
      #
      # @return [Mixed]
      #
      attr_reader :value

      ##
      # @return [String]
      #
      attr_reader :name

      ##
      # @return [String]
      #
      attr_reader :file

      ##
      # @return [String]
      #
      attr_reader :line

      ##
      # @return [String]
      #
      attr_reader :column

      ##
      # Returns the type of the object.
      #
      # @return [Symbol]
      #
      attr_reader :type

      ##
      # Returns the Ruby class of the object.
      #
      # @return [String]
      #
      attr_reader :ruby_class

      ##
      # The constant to lazy load data from.
      #
      # @return [Class]
      #
      attr_reader :constant

      ##
      # Array containing all the parent definitions.
      #
      # @return [Array]
      #
      attr_accessor :parents

      ##
      # Hash containing all the child definitions.
      #
      # @return [Hash]
      #
      attr_reader :definitions

      ##
      # The receiver of the method definition, method call or constant (in case
      # of constant paths).
      #
      # @return [RubyLint::Definition::RubyVariable|NilClass]
      #
      attr_accessor :receiver

      ##
      # @param [RubyLint::Node] node The node that this instance belongs to.
      # @param [Hash] options Hash containing additional options such as the
      #  parent definitions.
      # @option options [Array] :parents The parent definitions.
      # @option options [TrueClass|FalseClass] :lazy When set to `true`
      #  missing constants will be lazy loaded.
      # @option options [TrueClass|FalseClass] :kernel When set to `true` the
      #  Kernel constant will be loaded by default.
      # @option options [Class] :constant The constant to use for importing
      #  other constants, set to `Object` by default.
      #
      def initialize(node, options = {})
        @node        = node
        @name        = extract_name(@node)
        @file        = @node.file
        @line        = @node.line || 1
        @column      = @node.column || 0
        @type        = @node.type
        @ruby_class  = TYPE_CONSTANTS.fetch(@node.type, DEFAULT_CLASS)
        @value       = @node.children

        options = {
          :lazy     => false,
          :kernel   => false,
          :constant => Object,
          :parents  => []
        }.merge(options)

        options[:parents].select! { |value| value.is_a?(RubyObject) }

        options.each do |key, value|
          instance_variable_set("@#{key}", value)
        end

        clear!

        if options[:lazy] and options[:kernel]
          @definitions[:constant]['Kernel'] = Importer.import('Kernel')
        end

        if options[:kernel]
          Importer.import_global_variables.each do |var|
            add(var.type, var.name, var)
          end
        end
      end

      ##
      # Adds a new definition to the list.
      #
      # @param [#to_sym] type The type of definition to add.
      # @param [String] name The name of the definition.
      # @param [RubyLint::Definition::RubyObject] value The value to store
      #  under the specified name.
      #
      def add(type, name, value)
        unless value.is_a?(RubyObject)
          raise TypeError, "Expected RubyObject but got #{value.class}"
        end

        @definitions[type.to_sym][name] = value
      end

      ##
      # Looks up the given definition.
      #
      # @param [#to_sym] type The type of definition to look up.
      # @param [String] name The name of the definition to look up.
      # @param [Hash] import_options Hash containing options to pass to
      #  {RubyLint::Importer.import}.
      #
      def lookup(type, name, import_options = {})
        name       = name.to_s unless name.is_a?(String)
        definition = nil
        type       = type.to_sym

        if @definitions[type] and @definitions[type][name]
          definition = @definitions[type][name]

        # Look up the definition in the parent scope(s) (if any are set).
        elsif lookup_parent?(type)
          @parents.each do |parent|
            parent_definition = parent.lookup(type, name)

            if parent_definition
              definition = parent_definition
              break
            end
          end
        end

        # Lazy import the constant if it exists.
        if !definition and lazy_load?(name, type)
          @definitions[:constant][name] = Importer.import(
            name,
            @constant,
            import_options
          )

          definition = lookup(type, name)
        end

        return definition
      end

      ##
      # Removes all the stored child definitions.
      #
      def clear!
        @definitions = {
          :local_variable    => {},
          :instance_variable => {},
          :class_variable    => {},
          :global_variable   => {},
          :constant          => {},
          :method            => {},
          :instance_method   => {}
        }
      end

      private

      ##
      # Extracts the name for the specified node.
      #
      # @param [RubyLint::Node] node The node for which to extract the name.
      # @return [String]
      #
      def extract_name(node)
        name = node.children[0] || node.type
        name = name.is_a?(Node) ? name.children[0] : name

        return name.to_s
      end

      ##
      # Returns a boolean that indicates if the specified definition should be
      # lazy loaded.
      #
      # @param  [#to_sym] name The name of the definition.
      # @param  [Symbol] type The type of the definition.
      # @return [TrueClass|FalseClass]
      #
      def lazy_load?(name, type)
        return @lazy \
          && type == :constant \
          && @constant.constants.include?(name.to_sym)
      end

      ##
      # Returns a boolean that indicates if the current definition type should
      # be looked up in a parent definition.
      #
      # @param  [Symbol] type The type of definition.
      # @return [Trueclass|FalseClass]
      #
      def lookup_parent?(type)
        return LOOKUP_PARENT.include?(type) && !@parents.empty?
      end
    end # RubyObject
  end # Ruby
end # RubyLint
