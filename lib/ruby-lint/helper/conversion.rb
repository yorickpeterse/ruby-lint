module RubyLint
  module Helper
    ##
    # The Conversion helper can be used to easily convert {RubyLint::Node}
    # instances into specific definition objects.
    #
    module Conversion
      ##
      # Returns a {RubyLint::Definition::RubyObject} instance that represents
      # an instance of the Node's corresponding Ruby class.
      #
      # @param [RubyLint::Node] node
      # @return [RubyLint::Definition::RubyObject]
      #
      def instance_for_ruby_type(node)
        return unless node.ruby_class

        definition = nil
        class_def  = RubyLint.global_constant(node.ruby_class)

        if class_def
          definition = Definition::RubyObject.new_from_node(
            node,
            :instance_type => :instance,
            :parents       => [class_def]
          )
        end

        return definition
      end
    end # Conversion
  end # Helper
end # RubyLint
