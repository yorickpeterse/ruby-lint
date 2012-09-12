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
      :method
    ]

    attr_reader :parent
    attr_reader :symbols

    def initialize(parent = nil)
      @parent  = parent
      @symbols = {
        :local_variable    => {},
        :instance_variable => {},
        :class_variable    => {},
        :global_variable   => {},
        :method            => {},
        :class             => {}
      }
    end

    def add(type, name, value = nil)
      @symbols[type.to_sym][name] = value
    end

    def lookup(type, name)
      symbol = nil
      type   = type.to_sym

      if @symbols[type][name]
        symbol = @symbols[type][name]
      elsif LOOKUP_PARENT.include?(type) and @parent
        symbol = @parent.lookup(type, name)
      end

      return symbol
    end
  end # Scope
end # Rlint
