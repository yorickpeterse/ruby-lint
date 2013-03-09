desc 'Builds the documentation'
task :doc do
  sh('yard doc --verbose')
end
