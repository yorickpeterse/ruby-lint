RubyLint.global_scope.define_constant('Class') do |instance|
  instance.define_constructors do |method|
    method.returns(instance)
  end
end
