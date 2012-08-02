require 'ripper'

unless $:.include?(File.expand_path('../', __FILE__))
  $:.unshift(File.expand_path('../', __FILE__))
end

require 'rlint/parser'
#require 'rlint/scope'
require 'rlint/token/token'
require 'rlint/token/variable_token'
require 'rlint/token/method_token'
require 'rlint/token/class_token'
require 'rlint/token/value_token'
require 'rlint/token/operator_token'
require 'rlint/token/key_value_token'
require 'rlint/token/range_token'

module Rlint
  def self.lint(code, file = nil)
    parser = Parser.new(code)
    tokens = parser.parse

    return tokens
  end
end # Rlint
