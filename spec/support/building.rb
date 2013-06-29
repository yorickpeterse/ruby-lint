##
# Builds a list of definitions for the specified block of Ruby code.
#
# @param [String] code The code to analyze.
# @return [RubyLint::Definition::RubyObject]
#
def build_definitions(code)
  ast = parse(code, false)
  vm  = RubyLint::VirtualMachine.new

  vm.run(ast)

  return vm.definitions
end

##
# Builds a report for the given code and iterator class.
#
# @param [String] code
# @param [Class] iterator
# @return [RubyLint::Report]
#
def build_report(code, iterator)
  ast = parse(code, false)
  vm  = RubyLint::VirtualMachine.new

  vm.run(ast)

  report   = RubyLint::Report.new
  iterator = iterator.new(:report => report, :vm => vm)

  iterator.iterate(ast)

  return report
end

##
# Processes the given AST and returns the node associations.
#
# @see build_definitions
# @return [Hash]
#
def build_associations(code)
  ast = parse(code, false)
  vm  = RubyLint::VirtualMachine.new

  vm.run(ast)

  return vm.associations
end
