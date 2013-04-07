desc 'Generates all the Graphviz graphs'
task :graphviz do
  pattern = File.expand_path('../../doc/graphviz/*.dot', __FILE__)
  output  = File.expand_path('../../doc/images/', __FILE__)

  Dir.glob(pattern) do |file|
    name        = File.basename(file, '.dot') + '.png'
    destination = File.join(output, name)

    sh("dot -T png -o #{destination} #{file}")
  end
end
