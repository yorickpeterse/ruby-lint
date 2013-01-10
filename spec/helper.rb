require 'bacon'
require 'bacon/colored_output'

if ENV['COVERAGE']
  require File.expand_path('../simplecov_helper', __FILE__)
end

require File.expand_path('../../lib/ruby-lint', __FILE__)

Bacon.summary_on_exit

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

##
# Builds a list of definitions for the specified block of Ruby code.
#
# @param [String] code The code to analyze.
# @return [RubyLint::Definition::RubyObject]
#
def build_definitions(code)
  iterator = RubyLint::Analyze::Definitions.new

  iterator.iterate(parse(code, false))

  return iterator.options[:definitions]
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

# Show performance related information after running the tests.
module Bacon
  class << self
    alias old_handle_summary handle_summary
  end

  def self.handle_summary
    old_handle_summary

    memory    = `ps -o rss= #{Process.pid}`.strip.to_f
    memory_mb = (memory / 1024)
    time_secs = (Time.now - @timer)
    time_ms   = time_secs * 1000

    puts '%i KB (%.2f MB) used in %.2f miliseconds (%.2f seconds)' \
      % [memory, memory_mb, time_ms, time_secs]
  end
end
