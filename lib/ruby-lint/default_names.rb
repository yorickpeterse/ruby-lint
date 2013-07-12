RubyLint::Configuration.register_names 'analysis' do |names|
  RubyLint::Analysis.constants.each do |const|
    next if const == :Base

    names[const.to_s.snake_case] = RubyLint::Analysis.const_get(const)
  end
end

RubyLint::Configuration.register_names 'presenters' do |names|
  RubyLint::Presenter.constants.each do |const|
    names[const.to_s.snake_case] = RubyLint::Presenter.const_get(const)
  end
end

RubyLint::Configuration.register_names 'levels' do |names|
  RubyLint::Report::DEFAULT_LEVELS.each do |level|
    names[level.to_s] = level
  end
end
