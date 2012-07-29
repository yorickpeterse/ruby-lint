desc 'Runs all the tests'
task :test do
  glob = File.expand_path('../../spec/rlint/**/*.rb', __FILE__)

  Dir[glob].each { |file| require(file) }
end
