desc 'Runs tests on Travis CI'
task :travis do
  ENV['COVERALLS'] = '1'
  ENV['COVERAGE']  = '1'

  Rake::Task['test'].invoke
end
