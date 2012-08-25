# This file parses the Ruby code found in rlint/parser.rb and displays the AST
# using awesome_print. You can install the latter by running the following
# command:
#
#     gem install awesome_print
#
require File.expand_path('../../../lib/rlint', __FILE__)
require 'awesome_print'

code   = File.read(File.expand_path('../../../lib/rlint/parser.rb', __FILE__))
parser = Rlint::Parser.new(code)

ap parser.parse
