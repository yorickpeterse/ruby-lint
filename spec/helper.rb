require File.expand_path('../../lib/ruby-lint', __FILE__)
require 'bacon'

Bacon.summary_on_exit

RubyLint::FIXTURES = File.expand_path('../fixtures', __FILE__)

##
# Parses the given file path and returns an array of tokens.
#
# @param  [String] file The file to parse.
# @return [Array]
#
def parse_file(file)
  return RubyLint::Parser.new(File.read(file), file).parse
end

##
# Parses the specified Ruby code and returns the first instance of
# {RubyLint::Node} (excluding the root node).
#
# @param  [String] code The code to parse.
# @return [RubyLint::Node]
#
def parse(code)
  return RubyLint::Parser.new(code).parse.children[0]
end

##
# Creates a new instance of {RubyLint::Iterator} and binds all the
# available analysis classes to it.
#
# @param  [RubyLint::Report] report An optional report to assign to the
#  iterator.
# @return [RubyLint::Iterator]
#
def create_iterator(report = nil)
  iterator = RubyLint::Iterator.new(report)

  iterator.bind(RubyLint::Analyze::Definitions)
  iterator.bind(RubyLint::Analyze::CodingStyle)
  iterator.bind(RubyLint::Analyze::MethodValidation)
  iterator.bind(RubyLint::Analyze::ShadowingVariables)
  iterator.bind(RubyLint::Analyze::UndefinedVariables)
  iterator.bind(RubyLint::Analyze::UnusedVariables)

  return iterator
end

##
# Shorthand for creating instances of {RubyLint::Node}.
#
# @see RubyLint::Node#initialize
#
def s(type, *children)
  return RubyLint::Node.new(type, children)
end

# Bacon's output is a bit annoying for the sexp output of RubyLint::Node. This
# patch changes it to make it a lot easier to read.
class Should
  def method_missing(name, *args, &block)
    name    = "#{name}?"  if name.to_s =~ /\w[^?]\z/
    negated = @negated ? " not " : " "
    desc    = ''

    desc << "\n\nGot (using#{negated}#{name}):\n\n" << @object.inspect
    desc << "\n\nExpected:\n\n" << args.map{|x|x.inspect}.join(", ") << "\n"

    satisfy(desc) { |x| x.__send__(name, *args, &block) }
  end
end
