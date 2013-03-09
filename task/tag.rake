desc 'Creates a Git tag for the current version'
task :tag do
  version = RubyLint::VERSION

  sh %Q{git tag -a -m "Version #{version}" -s #{version}}
end
