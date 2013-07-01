desc 'Runs rubocop on lib/'
task :cop do
  sh 'rubocop lib/'
end
