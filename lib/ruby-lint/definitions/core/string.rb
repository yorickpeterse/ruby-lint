RubyLint.global_scope.define_constant('String') do |instance|
  instance.inherits(RubyLint.global_scope.lookup(:constant, 'Object'))

  instance.define_constructors do |method|
    method.define_optional_argument('str')

    method.returns(instance)
  end
end
