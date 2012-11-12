desc 'Generates the MANIFEST file'
task :manifest do
  files  = `git ls-files`.split("\n").sort
  handle = File.open(File.expand_path('../../MANIFEST', __FILE__), 'w')

  handle.write(files.join("\n"))
  handle.close
end
