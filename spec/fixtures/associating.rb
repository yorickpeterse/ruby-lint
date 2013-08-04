module RubyLint
  class VirtualMachine
    def self.constant_proxy(name)
      return Definition::ConstantProxy.new(global_scope, name)
    end
  end
end
