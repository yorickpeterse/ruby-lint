RubyLint::Configuration.register_names 'analysis' do |names|
  names['argument_amount']     = RubyLint::Analyze::ArgumentAmount
  names['shadowing_variables'] = RubyLint::Analyze::ShadowingVariables
  names['undefined_methods']   = RubyLint::Analyze::UndefinedMethods
  names['undefined_variables'] = RubyLint::Analyze::UndefinedVariables
  names['unused_variables']    = RubyLint::Analyze::UnusedVariables
end

RubyLint::Configuration.register_names 'presenters' do |names|
  names['text'] = RubyLint::Presenter::Text
  names['json'] = RubyLint::Presenter::JSON
end

RubyLint::Configuration.register_names 'levels' do |names|
  RubyLint::Report.levels.each do |level|
    names[level.to_s] = level
  end
end

require 'slop'
require 'ruby-lint/cli/base'
require 'ruby-lint/cli/analyze'
require 'ruby-lint/cli/ast'
