Kernel.global_variables.each do |name|
  RubyLint::VirtualMachine.global_scope.define_global_variable(name.to_s)
end
