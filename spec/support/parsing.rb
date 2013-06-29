##
# Parses the specified Ruby code and returns the first instance of
# {RubyLint::Node} (excluding the root node).
#
# @param  [String] code The code to parse.
# @param [TrueClass|FalseClass] first When set to `true` only the first node
#  is returned.
# @return [RubyLint::Node]
#
def parse(code, first = true)
  ast = RubyLint::Parser.new.parse(code)

  return first ? ast.children[0] : ast
end

##
# Shorthand for creating instances of a AST node.
#
def s(type, *children)
  return RubyLint::AST::Node.new(type, children)
end
