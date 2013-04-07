desc 'Builds the documentation'
task :doc do
  sh('rake graphviz')
  sh('yard doc')
end
