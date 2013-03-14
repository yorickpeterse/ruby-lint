RubyLint.global_scope.define_constant('Kernel') do |instance|
  instance.inherits(RubyLint.global_scope.lookup(:constant, 'Module'))
end
