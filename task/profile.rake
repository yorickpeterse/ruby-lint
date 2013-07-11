namespace :profile do
  desc 'Runs debug/profile.rb'
  task :profile do
    sh 'ruby debug/profile.rb 2>&1 | less -R -S'
  end

  desc 'Profiles memory usage'
  task :memory do
    ENV['RUBY_PROF_MEASURE_MODE'] = 'memory'

    Rake::Task['profile:profile'].invoke
  end

  desc 'Profiles object allocations'
  task :allocations do
    ENV['RUBY_PROF_MEASURE_MODE'] = 'allocations'

    Rake::Task['profile:profile'].invoke
  end

  desc 'Profiles process time'
  task :process do
    ENV['RUBY_PROF_MEASURE_MODE'] = 'process'

    Rake::Task['profile:profile'].invoke
  end
end
