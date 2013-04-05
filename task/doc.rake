desc 'Builds the documentation'
task :doc do
  yardopts = File.join(Dir.pwd, '.yardopts')

  if File.file?(yardopts)
    puts <<-EOF
Using YARD configuration:

#{File.read(yardopts)}
    EOF
  end

  sh('yard doc')
end
