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
  ast = RubyLint::Parser.new(code).parse

  return first ? ast.children[0] : ast
end

##
# Shorthand for creating instances of {RubyLint::Node}.
#
# @see RubyLint::Node#initialize
#
def s(type, *children)
  return RubyLint::Node.new(type, children)
end
