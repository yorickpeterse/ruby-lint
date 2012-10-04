module Rlint
  ##
  # {Rlint::Scope} is a class used for storing scoping related data such as a
  # list of defined constants.
  #
  class Scope
    LOOKUP_PARENT = [
      :instance_variable,
      :class_variable,
      :global_variable,
      :method,
      :instance_method,
      :constant
    ]

    attr_reader :parent
    attr_reader :symbols

    def initialize(parent = [], core = false)
      unless parent.is_a?(Array)
        parent = [parent]
      end

      @parent  = parent.select { |p| p.is_a?(Rlint::Scope) }
      @symbols = {
        :local_variable    => {},
        :instance_variable => {},
        :class_variable    => {},
        :global_variable   => {},
        :constant          => {},
        :method            => {},
        :instance_method   => {}
      }

      @symbols[:constant] = Rlint::METHODS if core
    end

    def add(type, name, value = nil)
      @symbols[type.to_sym][name] = value
    end

    def lookup(type, name)
      symbol = nil
      type   = type.to_sym

      if @symbols[type] and @symbols[type][name]
        symbol = @symbols[type][name]
      elsif LOOKUP_PARENT.include?(type) and !@parent.empty?
        @parent.each do |parent|
          parent_symbol = parent.lookup(type, name)

          if parent_symbol
            symbol = parent_symbol
            break
          end
        end
      end

      return symbol
    end
  end # Scope
end # Rlint
