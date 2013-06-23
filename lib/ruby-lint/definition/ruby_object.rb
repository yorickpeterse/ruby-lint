module RubyLint
  module Definition
    ##
    # The RubyObject class is the base definition class of ruby-lint. These so
    # called definition classes are used for storing information about Ruby
    # classes and instances. At their most basic form they are a mix between
    # {RubyLint::Node} and a lookup table.
    #
    # ruby-lint currently provides the following two definition classes:
    #
    # * {RubyLint::Definition::RubyObject}: the base definition class, used for
    #   most Ruby types and values.
    # * {RubyLint::Definition::RubyMethod} definition class that is used for
    #   methods exclusively.
    #
    # Using the RubyObject class one could create a definition for the String
    # class as following:
    #
    #     string  = RubyObject.new(:name => 'String', :type => :const)
    #     newline = RubyObject.new(
    #       :name  => 'NEWLINE',
    #       :type  => :const,
    #       :value => "\n"
    #     )
    #
    #     string.add(:const, newline.name, newline)
    #
    # For more information see the documentation of the corresponding methods.
    #
    # @!attribute [r] name
    #  @return [String] The name of the object.
    #
    # @!attribute [rw] value
    #  @return [Mixed] The value of the object.
    #
    # @!attribute [r] type
    #  @return [Symbol] The type of object, e.g. `:const`.
    #
    # @!attribute [r] ignore
    #  @return [TrueClass|FalseClass] When set to `true` the definition should
    #   be ignored by any analysis related code. This is mostly used when no
    #   meaningful data could be assigned (e.g. block arguments).
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
    #   Currently this is only used for variables.
    #
    # @!attribute [rw] instance_type
    #  @return [Symbol] Indicates if the object represents a class or an
    #   instance.
    #
    # @!attribute [r] update_parents
    #  @return [Array] A list of data types to also add to the parent
    #   definitions when adding an object to the current one.
    #
    # @!attribute [r] members_as_value
    #  @return [TrueClass|FalseClass] When set to `true` the {#value} getter
    #   returns a collection of the members instead of the manually defined
    #   value.
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
        :const,
        :cvar,
        :gvar,
        :instance_method,
        :ivar,
        :keyword,
        :method
      ]

      ##
      # String used to separate segments in a constant path.
      #
      # @return [String]
      #
      PATH_SEPARATOR = '::'

      attr_reader :update_parents,
        :column,
        :definitions,
        :ignore,
        :members_as_value,
        :name,
        :type

      attr_accessor :instance_type,
        :parents,
        :receiver,
        :reference_amount

      ##
      # Creates a new RubyObject instance based on an instance of
      # {RubyLint::Node}. This method is primarily used in
      # {RubyLint::DefinitionsBuilder}, in most cases third-party code should
      # not have a need for this method.
      #
      # @param [RubyLint::Node] node
      # @return [RubyLint::Definition::RubyObject]
      #
      def self.new_from_node(node, options = {})
        options[:name] ||= node.name
        options[:type] ||= node.type

        # Checking to see if :value evaluates to `true` would mean you could
        # never manually assign a nil value.
        unless options.key?(:value)
          options[:value] = node.value
        end

        if options[:value]
          options[:value] = create_value_definitions(options[:value])
        end

        return new(options)
      end

      ##
      # Converts either a single {RubyLint::Node} instance or a collection of
      # instances into {RubyObject} instances.
      #
      # @param [RubyLint::Node|Array<RubyLint::Node>] value
      # @return [RubyLint::Node|Array<RubyLint::Node>]
      #
      def self.create_value_definitions(value)
        if value.is_a?(Array)
          value = value.map { |v| create_value_definitions(v) }
        elsif value.is_a?(AST::Node)
          value = RubyObject.new_from_node(value)
        end

        return value
      end

      ##
      # @example
      #  string = RubyObject.new(:name => 'String', :type => :const)
      #
      # @param [Hash] options Hash containing additional options such as the
      #  parent definitions. For a list of available options see the
      #  corresponding getter/setter methods of this class.
      #
      # @yieldparam [RubyLint::Definition::RubyObject]
      #
      def initialize(options = {})
        options = default_options.merge(options)

        options.each do |key, value|
          instance_variable_set("@#{key}", value)
        end

        @value = nil if members_as_value

        clear!

        yield self if block_given?
      end

      ##
      # Returns the value of the definition. If `members_as_value` is set to
      # `true` the return value is a Hash containing the names and values of
      # each member.
      #
      # @return [Hash|RubyLint::Definition::RubyObject]
      #
      def value
        return members_as_value ? list(:member) : @value
      end

      ##
      # Sets the value of the definition. If a {RubyLint::Node} instance is
      # specified it will be converted to a definition instance.
      #
      # @param [RubyLint::Definition::RubyObject|RubyLint::Node] value
      #
      def value=(value)
        @value = value.is_a?(AST::Node) \
          ? RubyObject.new_from_node(value) : value
      end

      ##
      # Adds the definition object to the current one.
      #
      # @see #add
      # @param [RubyLint::Definition::RubyObject] definition
      #
      def add_definition(definition)
        add(definition.type, definition.name, definition)
      end

      ##
      # Adds a new definition to the definitions list.
      #
      # @example
      #  string  = RubyObject.new(:name => 'String', :type => :const)
      #  newline = RubyObject.new(
      #    :name  => 'NEWLINE',
      #    :type  => :const,
      #    :value => "\n"
      #  )
      #
      #  string.add(newline.type, newline.name, newline)
      #
      # @param [#to_sym] type The type of definition to add.
      # @param [String] name The name of the definition.
      # @param [RubyLint::Definition::RubyObject] value
      #
      # @raise [TypeError] Raised when a value that is not a RubyObject
      #  instance (or a subclass of this class) is given.
      #
      # @raise [ArgumentError] Raised when the specified type was invalid.
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

        if update_parents.include?(type)
          update_parent_definitions(type, name, value)
        end
      end

      ##
      # Looks up a definition by the given type and name. If no data was found
      # this method will try to look it up in any parent definitions.
      #
      # If no definition was found `nil` will be returned.
      #
      # @example
      #  string  = RubyObject.new(:name => 'String', :type => :const)
      #  newline = RubyObject.new(
      #    :name  => 'NEWLINE',
      #    :type  => :const,
      #    :value => "\n"
      #  )
      #
      #  string.add(newline.type, newline.name, newline)
      #
      #  string.lookup(:const, 'NEWLINE') # => #<RubyLint::Definition...>
      #
      # @param [#to_sym] type
      # @param [String] name
      # @param [TrueClass|FalseClass] lookup_parent Whether definitions should
      #  be looked up from parent definitions.
      # @return [RubyLint::Definition::RubyObject|NilClass]
      #
      def lookup(type, name, lookup_parent = true)
        type, name = prepare_lookup(type, name)
        found      = nil

        if defines?(type, name)
          found = definitions[type][name]

        # Look up the definition in the parent scope(s) (if any are set).
        elsif lookup_parent?(type) and lookup_parent
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
      # Returns the definition for the given constant path. If one of the
      # segments does not exist an error is raised instead.
      #
      # @example
      #  example.lookup_constant_path('A::B') # => #<RubyLint::Definition...>
      #
      # @param [String|Array<String>] path
      # @return [RubyLint::Definition::RubyObject]
      # @raise [ArgumentError] Raised when an invalid constant path is
      #  specified.
      #
      def lookup_constant_path(path)
        constant = self
        path     = path.split(PATH_SEPARATOR) if path.is_a?(String)

        path.each do |segment|
          found = constant.lookup(:const, segment)

          if found
            constant = found
          else
            name = path.join(PATH_SEPARATOR)

            raise ArgumentError, "Invalid constant path: #{name}"
          end
        end

        return constant
      end

      ##
      # Mimics a method call based on the given method name and the instance
      # type of the current definition.
      #
      # If the return value of a method definition is set to a Proc (or any
      # other object that responds to `:call`) it will be called and passed the
      # current instance as an argument.
      #
      # @todo Support for method arguments, if needed.
      # @param [String] name The name of the method to call.
      # @return [Mixed]
      #
      def call(name)
        method       = lookup(method_call_type, name)
        return_value = nil

        if method
          return_value = method.return_value

          if return_value.respond_to?(:call)
            return_value = return_value.call(self)
          end
        end

        return return_value
      end

      ##
      # Returns `true` if the current definition list or one of the parents has
      # the specified definition.
      #
      # @example
      #  string.has_definition?(:instance_method, 'downcase') # => true
      #
      # @param [#to_sym] type
      # @param [String] name
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
      # Determines the call types for methods called on the current definition.
      #
      # @return [Symbol]
      #
      def method_call_type
        return class? ? :method : :instance_method
      end

      ##
      # @return [TrueClass|FalseClass]
      #
      def class?
        return instance_type == :class
      end

      ##
      # @return [TrueClass|FalseClass]
      #
      def instance?
        return instance_type == :instance
      end

      ##
      # Updates the definition object so that it represents an instance of a
      # Ruby value.
      #
      def instance!
        @instance_type = :instance
      end

      ##
      # Checks if the specified definition is defined in the current object,
      # ignoring data in any parent definitions.
      #
      # @see RubyLint::Definition::RubyObject#has_definition?
      # @return [TrueClass|FalseClass]
      #
      def defines?(type, name)
        type, name = prepare_lookup(type, name)

        return definitions[type] && definitions[type][name]
      end

      ##
      # Returns a list of all the definitions for the specific type.  This list
      # excludes anything defined in parent definitions.
      #
      # @example
      #  string.list(:instance_method) # => [..., ..., ...]
      #
      # @param [#to_sym] type
      # @return [Array]
      #
      def list(type)
        return definitions[prepare_type(type)].values
      end

      ##
      # Returns the length of an attribute or 0.
      #
      # @param [#to_sym] attribute
      # @return [Numeric]
      #
      def length_of(attribute)
        value = send(attribute)

        return value ? value.length : 0
      end

      ##
      # Resets the list of definitions for the current RubyObject instance.
      #
      def clear!
        @definitions = {
          :lvar            => {},
          :ivar            => {},
          :cvar            => {},
          :gvar            => {},
          :const           => {},
          :method          => {},
          :instance_method => {},
          :member          => {},
          :keyword         => {},
          :arg             => {},
          :optarg          => {},
          :restarg         => {},
          :blockarg        => {}
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
      # Returns an Array containing all the receivers of the current
      # definition. These receivers are sorted from left to right. For example,
      # assume the following:
      #
      #     a.b.c
      #
      # In this case the return value would be as following:
      #
      #     [a, b, c]
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
      # Creates a new definition object based on the current one that
      # represents an instance of a Ruby value (instead of a class).
      #
      # @param [Hash] options Attributes to override in the new definition.
      # @return [RubyLint::Definition::RubyObject]
      #
      def instance(options = {})
        options = {
          :name          => name,
          :type          => type,
          :instance_type => :instance,
          :value         => value,
          :parents       => [self]
        }.merge(options)

        return self.class.new(options)
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
      # @example
      #  string.define_constant('NEWLINE')
      #
      # @param [String] name
      # @return [RubyLint::Definition::RubyObject]
      #
      def define_constant(name, &block)
        if name.include?(PATH_SEPARATOR)
          path       = name.split(PATH_SEPARATOR)
          target     = lookup_constant_path(path[0..-2])
          definition = target.define_constant(path[-1], &block)
        else
          definition = add_child_definition(name, :const, &block)
        end

        return definition
      end

      ##
      # Defines a new global variable in the current definition.
      #
      # @example
      #  string.define_global_variable('$name', '...')
      #
      # @param [String] name
      # @param [Mixed] value
      #
      def define_global_variable(name, value = nil)
        return add_child_definition(name, :gvar, value)
      end

      ##
      # Defines a new class method.
      #
      # @example
      #  string.define_method(:new)
      #
      # @param [String] name
      # @return [RubyLint::Definition::RubyMethod]
      #
      def define_method(name, &block)
        return add_child_method(name, :method, &block)
      end

      ##
      # Defines a new instance method.
      #
      # @example
      #  string.define_instance_method(:gsub)
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
        attributes = [
          %Q(@name="#{name}"),
          %Q(@type="#{type}"),
          %Q(@instance_type="#{instance_type}")
        ]

        # See <http://stackoverflow.com/a/2818916> for more info.
        address = (object_id << 1).to_s(16)

        return %Q(#<#{self.class}:0x#{address} #{attributes.join(' ')}>)
      end

      private

      ##
      # Updates each parent definition if it has an existing definition for hte
      # given type and name.
      #
      # @see #add
      #
      def update_parent_definitions(type, name, value)
        parents.each do |parent|
          parent.add(type, name, value) if parent.has_definition?(type, name)
        end
      end

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
          :update_parents    => [],
          :instance_type     => :class,
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
