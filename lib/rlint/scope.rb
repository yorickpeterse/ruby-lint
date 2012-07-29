module Rlint
  class Scope
    VARIABLE_MAPPING = {
      :@ident => :local_variables,
      :@gvar  => :global_variables,
      :@ivar  => :instance_variables,
      :@cvar  => :class_variables,
      :@const => :constants
    }

    LOOKUP_PARENT = [:global_variables, :class_variables, :constants, :methods]

    attr_accessor :parent
    attr_accessor :local_variables
    attr_accessor :global_variables
    attr_accessor :instance_variables
    attr_accessor :class_variables
    attr_accessor :constants
    attr_accessor :methods

    def initialize(parent = nil)
      @parent             = parent
      @local_variables    = {}
      @global_variables   = {}
      @instance_variables = {}
      @class_variables    = {}
      @constants          = {}
      @methods            = {}
    end

    def lookup(type, name)
      type, name = type.to_sym, name

      if VARIABLE_MAPPING[type]
        type = VARIABLE_MAPPING[type]
      end

      found = instance_variable_get("@#{type}")[name]

      # Look for the variable in the parent scope (if there is any).
      if lookup_parent?(type)
        found = @parent.lookup(type, name)
      end

      return found
    end

    def get(type, variable)
      if VARIABLE_MAPPING[type]
        type = VARIABLE_MAPPING[type]
      end

      found = instance_variable_get("@#{type}")[variable]

      if lookup_parent?(type)
        found = @parent.lookup(type, name)
      end

      return found
    end

    def set(type, variable)
      if VARIABLE_MAPPING[type]
        type = VARIABLE_MAPPING[type]
      end

      instance_variable_get("@#{type}")[variable.name] = variable
    end

    def lookup_parent?(type)
      return !@parent.nil? && LOOKUP_PARENT.include?(type)
    end
  end # Scope
end # Rlint
