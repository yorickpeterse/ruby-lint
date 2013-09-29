RubyLint::GlobalScope.definitions.define_constant('Class') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Module'))

  klass.define_constructors do |method|
    method.define_optional_argument('klass')

    method.returns do |object|
      object.instance
    end
  end

  klass.define_method('allocate') do |method|
    method.returns do |object|
      object.instance
    end
  end

  klass.define_method('superclass') do |method|
    method.returns do |object|
      object.instance
    end
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Class').deep_freeze