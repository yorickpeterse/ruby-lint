module RubyLint
  module DefinitionBuilder
    class RubyClass < RubyModule
      ##
      # Called after creating a new instance of the class.
      #
      def after_initialize
        options[:parent] ||= RubyLint.global_constant('Object')
      end

      ##
      # Builds the definition for a Ruby class.
      #
      # @see RubyLint::DefinitionBuilder::RubyModule#build
      #
      def build
        return new_definition([options[:parent], definitions])
      end
    end # RubyClass
  end # DefinitionBuilder
end # RubyLint
