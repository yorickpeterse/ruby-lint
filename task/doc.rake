desc 'Builds the documentation'
task :doc do
  sh('rake graphviz')
  sh('yard doc')
end

desc 'Generates and uploads the documentation'
task :upload_doc => :doc do
  root_dir    = "/srv/http/code.yorickpeterse.com/public/ruby-lint"
  version_dir = File.join(root_dir, RubyLint::VERSION)

  sh "scp -r yardoc europa:#{version_dir}"

  sh "ssh europa 'rm #{root_dir}/latest " \
    "&& ln -s #{version_dir} #{root_dir}/latest'"
end
