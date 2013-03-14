RubyLint.global_scope.define_constant('Module') do |instance|
  instance.inherits(RubyLint.global_scope.lookup(:constant, 'Object'))
end
