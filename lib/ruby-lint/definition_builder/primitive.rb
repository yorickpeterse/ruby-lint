module RubyLint
  module DefinitionBuilder
    class Primitive < Base
      ##
      # Hash containing various Node types and the associated Ruby classes.
      #
      # @return [Hash]
      #
      RUBY_CLASSES = {
        :str    => 'String',
        :sym    => 'Symbol',
        :int    => 'Fixnum',
        :float  => 'Float',
        :regexp => 'Regexp',
        :array  => 'Array',
        :hash   => 'Hash',
        :irange => 'Range',
        :erange => 'Range',
        :lambda => 'Proc'
      }

      ##
      # @return [RubyLint::Definition::RubyObject]
      #
      def build
        parents    = []
        ruby_class = RUBY_CLASSES[node.type]

        if ruby_class
          found = RubyLint.global_constant(ruby_class)
          parents << found if found
        end

        opts = {
          :type          => node.type,
          :value         => node.children[0],
          :instance_type => :instance,
          :parents       => parents
        }.merge(options)

        return Definition::RubyObject.new(opts)
      end
    end # Primitive
  end # DefinitionBuilder
end # RubyLint
