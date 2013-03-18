RubyLint.global_scope.define_constant('Class') do |klass|
  klass.define_constructors do |method|
    method.define_optional_argument('klass')

    method.returns(:self)
  end

  klass.define_method('allocate') do |method|
    method.returns(:self)
  end

  klass.define_method('superclass') do |method|
    method.returns(:self)
  end
end
