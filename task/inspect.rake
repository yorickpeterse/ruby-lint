namespace :inspect do
  desc 'Lists information of methods in a constant'
  task :methods, :constant do |task, args|
    abort 'You must specify a constant' unless args[:constant]

    inspector = RubyLint::Inspector.new(args[:constant])

    methods          = inspector.inspect_methods
    instance_methods = inspector.inspect_instance_methods

    puts <<-EOF.strip
Constant: #{args[:constant]}

Class methods:

#{inspector.format_methods(methods)}

Instance methods:

#{inspector.format_methods(instance_methods)}
    EOF
  end

  desc 'Lists all available constants'
  task :constants, :constant do |task, args|
    abort 'You must specify a constant' unless args[:constant]

    inspector = RubyLint::Inspector.new(args[:constant])
    constants = inspector.inspect_constants

    puts <<-EOF.strip
Constant: #{args[:constant]}

Constants:

#{inspector.format_constants(constants)}
    EOF
  end
end
