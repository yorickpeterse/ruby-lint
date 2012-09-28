require 'ripper'

unless $:.include?(File.expand_path('../', __FILE__))
  $:.unshift(File.expand_path('../', __FILE__))
end

require 'rlint/version'
require 'rlint/parser'
require 'rlint/token/token'
require 'rlint/token/variable_token'
require 'rlint/token/statement_token'
require 'rlint/token/begin_rescue_token'
require 'rlint/token/method_definition_token'
require 'rlint/token/parameters_token'
require 'rlint/token/method_token'
require 'rlint/token/block_token'
require 'rlint/token/assignment_token'
require 'rlint/token/case_token'
require 'rlint/token/regexp_token'
require 'rlint/token/class_token'
require 'rlint/parser_error'
require 'rlint/iterator'
require 'rlint/callback'
require 'rlint/report'
require 'rlint/scope'
require 'rlint/methods'
require 'rlint/formatter/text'
require 'rlint/analyze/coding_style'
require 'rlint/analyze/definitions'
