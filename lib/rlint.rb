require 'ripper'

unless $:.include?(File.expand_path('../', __FILE__))
  $:.unshift(File.expand_path('../', __FILE__))
end

require 'rlint/parser'

require 'rlint/token/token'
require 'rlint/token/variable_token'
require 'rlint/token/statement_token'
require 'rlint/token/begin_rescue_token'
require 'rlint/token/if_token'
require 'rlint/token/method_definition_token'
require 'rlint/token/parameters_token'
# require 'rlint/token/block_token'
# require 'rlint/token/case_token'
# require 'rlint/token/class_token'
# require 'rlint/token/method_token'
# require 'rlint/token/regexp_token'

require 'rlint/parser_error'

module Rlint
  def self.lint(code, file = nil)
    parser = Parser.new(code)
    tokens = parser.parse

    return tokens
  end
end # Rlint
