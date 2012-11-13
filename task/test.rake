desc 'Runs all the tests'
task :test do
  glob = File.expand_path('../../spec/ruby-lint/**/*.rb', __FILE__)

  Dir[glob].each { |file| require(file) }
end
