RubyLint.global_scope.define_constant('String') do |instance|
  instance.inherits(RubyLint.global_scope.lookup(:constant, 'Object'))
end
