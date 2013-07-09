namespace :debug do
  desc 'Shows basic memory usage'
  task :memory do
    sh 'RUBY_PROF_MEASURE_MODE=memory ruby debug/profile.rb 2>&1 | less -R -S'
  end

  desc 'Shows basic object allocations'
  task :allocations do
    sh 'RUBY_PROF_MEASURE_MODE=allocations ruby debug/profile.rb 2>&1 ' \
      '| less -R -S'
  end
end
