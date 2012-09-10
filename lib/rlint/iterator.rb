module Rlint
  ##
  # {Rlint::Iterator} is a class that iterates over the AST nodes of
  # {Rlint::Parser} and executes any bound callbacks for the various node types
  # it finds.
  #
  class Iterator
    attr_reader :callbacks

    def initialize(ast, file = '(rlint)')
      @ast       = ast
      @file      = file
      @callbacks = {}
    end

    def iterate(nodes = @ast)
      nodes.each do |node|
        next if node.nil?

        # Execute all available callbacks for the current node type.
        if @callbacks.key?(node.event)
          @callbacks[node.event].each do |callback|
            callback_name = 'on_' + node.event.to_s

            # Callback methods can either be called "on_X" (where X is the name
            # of the event) or "call" (to support blocks).
            if callback.respond_to?(callback_name)
              callback.send(callback_name, node, @file)
            else
              callback.call(node, @file)
            end
          end
        end

        # Iterate over all the child nodes.
        if node.value and node.value.respond_to?(:each)
          iterate(node.value)
        end
      end
    end

    def bind(event, &block)
      event = event.to_sym

      @callbacks[event] ||= []
      @callbacks[event] << block
    end

    def bind_class(event, callback_class)
      event = event.to_sym

      @callbacks[event] ||= []
      @callbacks[event] << callback_class.new
    end
  end # Iterator
end # Rlint
