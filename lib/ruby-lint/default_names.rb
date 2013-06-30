RubyLint::Configuration.register_names 'analysis' do |names|
  names['argument_amount']     = RubyLint::Analysis::ArgumentAmount
  names['shadowing_variables'] = RubyLint::Analysis::ShadowingVariables
  names['undefined_methods']   = RubyLint::Analysis::UndefinedMethods
  names['undefined_variables'] = RubyLint::Analysis::UndefinedVariables
  names['unused_variables']    = RubyLint::Analysis::UnusedVariables
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
