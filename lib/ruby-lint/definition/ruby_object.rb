module RubyLint
  module Definition
    ##
    # RubyObject is the base definition class used for storing information
    # about Ruby definitions such as variables and methods.
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
    # @todo Update documentation
    #
    # @!attribute [r] node
    #  @return [RubyLint::Node] The node used for creating the object.
    #
    # @!attribute [r] name
    #  @return [String] The name of the object.
    #
    # @!attribute [rw] value
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
    # @!attribute [r] default_constants
    #  @return [Array] Array containing the constant names to import by
    #  default.
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
        :default_constants,
        :definitions,
        :file,
        :lazy,
        :line,
        :name,
        :node,
        :type

      attr_accessor :parents, :receiver, :reference_amount, :value

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
        options[:name]   = node.name
        options[:file]   = node.file
        options[:line]   = node.line || 1
        options[:column] = node.column || 0
        options[:type]   = node.type

        # Checking to see if :value evaluates to `true` would mean you could
        # never manually assign a nil value.
        unless options.key?(:value)
          options[:value] = node.value
        end

        if options[:value]
          options[:value] = create_value_definitions(options[:value])
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
      # Convert each value of the current definition into a definition
      # instance.
      #
      # @param [RubyLint::Node|Array] value
      # @return [Mixed]
      #
      def self.create_value_definitions(value)
        if value.is_a?(Array)
          value = value.map { |v| create_value_definitions(v) }
        elsif value.is_a?(Node)
          value = RubyObject.new_from_node(value)
        end

        return value
      end

      ##
      # @param [Hash] options Hash containing additional options such as the
      #  parent definitions.
      #
      # @yieldparam [RubyLint::Definition::RubyObject]
      #
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
        options = default_options.merge(options)

        options[:default_constants].map!(&:to_s)

        options.each do |key, value|
          instance_variable_set("@#{key}", value)
        end

        clear!

        yield self if block_given?
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
        type = prepare_type(type)

        unless value.is_a?(RubyObject)
          raise TypeError, "Expected RubyObject but got #{value.class}"
        end

        unless definitions.key?(type)
          raise ArgumentError, ":#{type} is not a valid type of data to add"
        end

        definitions[type][name] = value
      end

      ##
      # Looks up the given definition.
      #
      # @param [#to_sym] type The type of definition to look up.
      # @param [String] name The name of the definition to look up.
      #
      def lookup(type, name)
        type, name = prepare_lookup(type, name)
        found      = nil

        if defines?(type, name)
          found = definitions[type][name]

        # Look up the definition in the parent scope(s) (if any are set).
        elsif lookup_parent?(type)
          parents.each do |parent|
            parent_definition = parent.lookup(type, name)

            if parent_definition
              found = parent_definition
              break
            end
          end
        end

        return found
      end

      ##
      # Looks up the return value of a given method type and name. If the
      # return value is set to `:self` the current definition instance will be
      # returned instead.
      #
      # @example
      #   RubyLint.global_constant('Class') \
      #     .return_value_of(:method, 'new') \
      #     .name # => "Class"
      #
      #   # Object extends class
      #   RubyLint.global_constant('Object') \
      #     .return_value_of(:method, 'new') \
      #     .name # => "Object"
      #
      # @see RubyLint::Definition::RubyObject#lookup
      #
      def return_value_of(type, name)
        found = lookup(type, name)
        value = nil

        if found and found.return_value
          value = found.return_value
        end

        return value == :self ? self : value
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
        type, name = prepare_lookup(type, name)

        if definitions[type] and definitions[type][name]
          return true

        elsif lookup_parent?(type)
          parents.each do |parent|
            return true if parent.has_definition?(type, name)
          end
        end

        return false
      end

      ##
      # Checks if the specified definition is defined in the current object,
      # ignoring the definitions of any parent objects.
      #
      # @see RubyLint::Definition::RubyObject#has_definition?
      #
      def defines?(type, name)
        type, name = prepare_lookup(type, name)

        return definitions[type] && definitions[type][name]
      end

      ##
      # Returns a list of all the definitions for the specific type.  This list
      # excludes anything defined in parent definitions.
      #
      # @param [#to_sym] type The type of definitions to retrieve.
      # @return [Array]
      #
      def list(type)
        return definitions[prepare_type(type)].values
      end

      ##
      # Returns the length of an attribute.
      #
      # @param [#to_sym] attribute
      # @return [Numeric]
      #
      def length_of(attribute)
        value = send(attribute)

        return value ? value.length : 0
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
      # Merges the definitions object `other` into the current one.
      #
      # @param [RubyLint::Definition::RubyObject] other
      #
      def merge(other)
        other.definitions.each do |type, values|
          values.each do |name, definition|
            definitions[type][name] = definition
          end
        end
      end

      ##
      # Copies all the definitions in `source` of type `type` into the current
      # definitions object.
      #
      # @param [RubyLint::Definition::RubyObject] source
      # @param [Symbol] source_type The type of definitions to copy from the
      #  source.
      # @param [Symbol] target_type The type to store the definitions under,
      #  set to the `source_type` value by default.
      #
      def copy(source, source_type, target_type = source_type)
        source.list(source_type).each do |definition|
          add(target_type, definition.name, definition)
        end
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
      # Returns `true` if the object was referenced more than once.
      #
      # @return [TrueClass|FalseClass]
      #
      def used?
        return @reference_amount > 0
      end

      ##
      # Defines a new child constant.
      #
      # @param [String] name
      # @return [RubyLint::Definition::RubyObject]
      #
      def define_constant(name, &block)
        return add_child_definition(name, :constant, &block)
      end

      ##
      # Defines a new global variable in the current definition.
      #
      # @param [String] name
      # @param [Mixed] value
      #
      def define_global_variable(name, value = nil)
        return add_child_definition(name, :global_variable, value)
      end

      ##
      # Defines a new child method.
      #
      # @param [String] name
      # @return [RubyLint::Definition::RubyMethod]
      #
      def define_method(name, &block)
        return add_child_method(name, :method, &block)
      end

      ##
      # Defines a new child instance method.
      #
      # @see RubyLint::Definition::RubyObject#define_method
      #
      def define_instance_method(name, &block)
        return add_child_method(name, :instance_method, &block)
      end

      ##
      # Helper method that makes it easier to provide the two constructor
      # methods `new` and `initialize`. The supplied block is yielded on both
      # method definitions.
      #
      # @example
      #  some_object.define_constructors do |method|
      #    method.argument('name')
      #  end
      #
      def define_constructors(&block)
        define_method('new', &block)
        define_instance_method('initialize', &block)
      end

      ##
      # Adds the object(s) to the list of parent definitions.
      #
      # @param [Array] definitions
      #
      def inherits(*definitions)
        self.parents += definitions
      end

      ##
      # Returns a pretty formatted String that shows some info about the
      # current definition.
      #
      # @return [String]
      #
      def inspect
        attributes = [%Q(@name="#{name}"), %Q(@type="#{type}")]

        # See <http://stackoverflow.com/a/2818916> for more info.
        address = (object_id << 1).to_s(16)

        return %Q(#<#{self.class}:0x#{address} #{attributes.join(' ')}>)
      end

      private

      ##
      # Adds a new child definition to the current definition.
      #
      # @param [String] name The name of the definition.
      # @param [Symbol] type The definition type.
      # @param [Mixed] value
      # @return [RubyLint::Definition::RubyObject]
      #
      def add_child_definition(name, type, value = nil, &block)
        definition = self.class.new(
          :name    => name,
          :type    => type,
          :value   => nil,
          :parents => [self],
          &block
        )

        add(definition.type, definition.name, definition)

        return definition
      end

      ##
      # Adds a new child method to the current definition.
      #
      # @see RubyLint::Definition::RubyObject#add_child_definition
      #
      def add_child_method(name, type, &block)
        definition = RubyMethod.new(
          :name        => name,
          :type        => :method,
          :method_type => type,
          :parents     => [self],
          &block
        )

        add(definition.method_type, definition.name, definition)

        return definition
      end

      ##
      # Returns a boolean that indicates if the current definition type should
      # be looked up in a parent definition.
      #
      # @param  [Symbol] type The type of definition.
      # @return [Trueclass|FalseClass]
      #
      def lookup_parent?(type)
        return LOOKUP_PARENT.include?(type) && !parents.empty?
      end

      ##
      # Returns a Hash containing the default options.
      #
      # @return [Hash]
      #
      def default_options
        return {
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
        }
      end

      ##
      # Casts the type and name of data to look up to the correct values.
      #
      # @param [#to_sym] type
      # @param [#to_s] name
      # @return [Array]
      #
      def prepare_lookup(type, name)
        return prepare_type(type), prepare_name(name)
      end

      ##
      # Prepares the name of a definition.
      #
      # @param [#to_s] name
      # @return [String]
      #
      def prepare_name(name)
        name = name.to_s unless name.is_a?(String)

        return name
      end

      ##
      # Prepares the data type name.
      #
      # @param [#to_sym] type
      # @return [Symbol]
      #
      def prepare_type(type)
        type = type.to_sym unless type.is_a?(Symbol)

        return type
      end
    end # RubyObject
  end # Definition
end # RubyLint
