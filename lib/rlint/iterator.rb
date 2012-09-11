module Rlint
  ##
  # {Rlint::Iterator} is a class that iterates over the AST nodes of
  # {Rlint::Parser} and executes any bound callbacks for the various node types
  # it finds.
  #
  class Iterator
    ##
    # Array containing a set of instance specific callback objects.
    #
    # @return [Array]
    #
    attr_reader :callbacks

    def initialize
      @callbacks = []
    end

    def iterate(nodes, file = '(rlint)')
      nodes.each do |node|
        next if node.nil?

        callback_name = 'on_' + node.event.to_s

        @callbacks.each do |obj|
          if obj.respond_to?(callback_name)
            obj.send(callback_name, node, file)
          end
        end

        # Iterate over all the child nodes.
        if node.value and node.value.respond_to?(:each)
          iterate(node.value, file)
        end
      end
    end

    def bind(callback_class)
      @callbacks << callback_class.new
    end
  end # Iterator
end # Rlint
