##
# Builds a list of definitions for the specified block of Ruby code.
#
# @param [String] code The code to analyze.
# @return [RubyLint::Definition::RubyObject]
#
def build_definitions(code)
  ast, comments = parse_with_comments(code)
  vm            = RubyLint::VirtualMachine.new(:comments => comments)

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
  ast, comments = parse_with_comments(code)
  vm            = RubyLint::VirtualMachine.new(:comments => comments)

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
  ast, comments = parse_with_comments(code)
  vm            = RubyLint::VirtualMachine.new(:comments => comments)

  vm.run(ast)

  return vm.associations
end
