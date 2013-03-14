RubyLint.global_scope.define_constant('Object') do |instance|
  instance.inherits(RubyLint.global_scope.lookup(:constant, 'Class'))

  instance.define_constructors do |method|
    method.returns(instance)
  end
end
