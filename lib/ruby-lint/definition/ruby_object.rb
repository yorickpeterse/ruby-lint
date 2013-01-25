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
    # @!attribute [r] node
    #  @return [RubyLint::Node] The node used for creating the object.
    #
    # @!attribute [r] name
    #  @return [String] The name of the object.
    #
    # @!attribute [r] value
    #  @return [Mixed] The value of the object.
    #
    # @!attribute [r] file
    #  @return [String] The path to the file in which the objects source is
    #   located.
    #
    # @!attribute [r] line
    #  @return [Numeric]
    #
    # @!attribute [r] column
    #  @return [Numeric]
    #
    # @!attribute [r] lazy
    #  @return [TrueClass|FalseClass] lazy Boolean that indicates if missing
    #   definitions should be lazy loaded.
    #
    # @!attribute [r] type
    #  @return [Symbol] The type of object, e.g. `:constant`.
    #
    # @!attribute [r] constant
    #  @return [Class] The constant to use for lazy loading
    #   missing definitions.
    #
    # @!attribute [r] definitions
    #  @return [Hash] Hash containing all child the definitions.
    #
    # @!attribute [rw] parents
    #  @return [Array] Array containing the parent definitions.
    #
    # @!attribute [rw] receiver
    #  @return [RubyLint::Definition::RubyObject] The receiver on which the
    #   object was defined/called.
    #
    # @!attribute [rw] reference_amount
    #  @return [Numeric] The amount of times an object was referenced.
    #  Currently this is only used for variables.
    #
    class RubyObject
      include VariablePredicates

      ##
      # Array containing items that should be looked up in the parent
      # definition if they're not found in the current one.
      #
      # @return [Array]
      #
      LOOKUP_PARENT = [
        :class_variable,
        :constant,
        :global_variable,
        :instance_method,
        :instance_variable,
        :keyword,
        :method
      ]

      attr_reader :column,
        :constant,
        :definitions,
        :file,
        :lazy,
        :line,
        :name,
        :node,
        :type,
        :value

      attr_accessor :parents, :receiver, :reference_amount

      ##
      # @param [RubyLint::Node] node The node that this instance belongs to.
      #
      def self.new_from_node(node, options = {})
        path_segments = []

        if node.constant_path?
          path_segments = node.children[0..-2].reverse
          node          = node.children[-1]
        end

        options[:node]   = node
        options[:name]   = extract_name(node)
        options[:file]   = node.file
        options[:line]   = node.line || 1
        options[:column] = node.column || 0
        options[:type]   = node.type

        unless options.key?(:value)
          if node.scalar?
            options[:value] = node.children[0]
          elsif !node.variable?
            options[:value] = node.children
          end
        end

        if options[:value].is_a?(Node)
          options[:value] = new_from_node(options[:value])
        end

        object = new(options)

        # Assign the receivers of this object.
        #
        # TODO: this approach doesn't take existing definitions into account,
        # instead it will always create a new one for each segment.
        if !path_segments.empty? and !options[:receiver]
          path_segments.inject(object) do |source, segment|
            source.receiver = new_from_node(segment)
            source.receiver
          end
        end

        return object
      end

      ##
      # Extracts the name for the specified node.
      #
      # @param [RubyLint::Node] node The node for which to extract the name.
      # @return [String]
      #
      def self.extract_name(node)
        name = node.children[0] || node.type
        name = name.is_a?(Node) ? name.children[0] : name

        return name.to_s
      end

      ##
      # @param [Hash] options Hash containing additional options such as the
      #  parent definitions.
      # @option options [Array] :parents The parent definitions.
      # @option options [TrueClass|FalseClass] :lazy When set to `true`
      #  missing constants will be lazy loaded.
      # @option options [TrueClass|FalseClass] :default_constants An array of
      #  constant names to load by default.
      # @option options [Class] :constant The constant to use for importing
      #  other constants, set to `Object` by default.
      # @option options [RubyLint::Node|RubyLint::Definition::RubyObject]
      #  :value The custom value to use for the object, set to the output of
      #  {RubyLint::Node#children} by default.
      #
      def initialize(options = {})
        options = {
          :column            => 0,
          :constant          => Object,
          :default_constants => [],
          :file              => '',
          :lazy              => false,
          :line              => 1,
          :node              => nil,
          :parents           => [],
          :receiver          => nil,
          :reference_amount  => 0,
          :value             => nil
        }.merge(options)

        options[:parents].each do |parent|
          unless parent.is_a?(RubyObject)
            raise TypeError, 'parents can only be RubyObject instances'
          end
        end

        options[:default_constants].map!(&:to_s)

        options.each do |key, value|
          instance_variable_set("@#{key}", value)
        end

        clear!

        @default_constants.each { |name| import_constant(name) } if @lazy
        @default_constants.each { |name| import_global_variables(name) }
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
        type = type.to_sym

        unless value.is_a?(RubyObject)
          raise TypeError, "Expected RubyObject but got #{value.class}"
        end

        unless @definitions.key?(type)
          raise ArgumentError, ":#{type} is not a valid type of data to add"
        end

        @definitions[type][name] = value
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
          import_constant(name, import_options)

          definition = lookup(type, name)
        end

        return definition
      end

      ##
      # Returns `true` if the current definition list or one of the parents has
      # the specified definition.
      #
      # @param [#to_sym] type The type of data to look up.
      # @param [String] name The name of the definition.
      # @return [TrueClass|FalseClass]
      #
      def has_definition?(type, name)
        type   = type.to_sym unless type.is_a?(Symbol)
        name   = name.to_s unless name.is_a?(String)
        exists = false

        if @definitions[type] and @definitions[type][name]
          exists = true

        elsif lookup_parent?(type)
          @parents.each do |parent|
            if parent.has_definition?(type, name)
              exists = true
              break
            end
          end
        end

        return exists
      end

      ##
      # Returns a list of all the definitions for the specific type.  This list
      # excludes anything defined in parent definitions.
      #
      # @param [#to_sym] type The type of definitions to retrieve.
      # @return [Array]
      #
      def list(type)
        type = type.to_sym unless type.is_a?(Symbol)

        return @definitions[type].values
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
          :instance_method   => {},
          :member            => {},
          :keyword           => {}
        }
      end

      ##
      # Returns an array containing the "path" of all receivers from left to
      # right.
      #
      # @return [Array]
      #
      def receiver_path
        receivers = []
        source    = self

        while receiver = source.receiver
          receivers << receiver
          source     = receiver
        end

        return receivers << self
      end

      ##
      # Returns an array of child nodes.
      #
      # @return [Array]
      #
      def children
        return @node ? @node.children : []
      end

      ##
      # Returns `true` if the object was imported using {RubyLint::Importer}.
      #
      # @return [TrueClass|FalseClass]
      #
      def imported?
        return @imported == true
      end

      ##
      # Returns `true` if the object was referenced more than once.
      #
      # @return [TrueClass|FalseClass]
      #
      def used?
        return @reference_amount >= 1
      end

      private

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
      # Imports the specified constant name.
      #
      # @param [#to_s] name The name of the constant to import.
      # @param [Hash] options The options to pass to the importer.
      #
      def import_constant(name, options = {})
        name = name.to_s

        @definitions[:constant][name] = Importer.import(
          name,
          @constant,
          options
        )
      end

      ##
      # Imports the global variables of the specified constant.
      #
      # @param [#to_s] name The name of the constant.
      #
      def import_global_variables(name)
        name       = name.to_s
        definition = lookup(:constant, name)

        Importer.import_global_variables(name, @constant).each do |var|
          definition.add(var.type, var.name, var)
        end
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
