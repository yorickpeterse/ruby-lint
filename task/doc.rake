desc 'Builds the documentation'
task :doc do
  sh('rake graphviz')
  sh('yard doc')
end

desc 'Generates and uploads the documentation'
task :upload_doc => :doc do
  version     = RubyLint::VERSION
  bucket      = 's3://code.yorickpeterse.com'
  directory   = GEMSPEC.name

  sh "aws s3 rm --recursive #{bucket}/#{directory}/latest"
  sh "aws s3 sync yardoc #{bucket}/#{directory}/#{version}"
  sh "aws s3 sync yardoc #{bucket}/#{directory}/latest"
end
