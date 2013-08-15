module RubyLint
  class GlobalScope
    def self.constant_proxy(name)
      return Definition::ConstantProxy.new(definitions, name)
    end
  end
end
