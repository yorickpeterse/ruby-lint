namespace :generate do
  desc 'Generates a set of definitions for a constant'
  task :methods, :constant do |task, args|
    abort 'You have to specify a constant' unless args[:constant]

    inspector   = RubyLint::Inspector.new(args[:constant])
    @methods    = {:method => {}, :instance_method => {}}
    arg_mapping = {
      :req   => :argument,
      :opt   => :optional_argument,
      :rest  => :rest_argument,
      :block => :block_argument
    }

    @constant   = inspector.constant
    @superclass = inspector.constant.superclass rescue nil
    inspected   = {
      :method          => inspector.inspect_methods,
      :instance_method => inspector.inspect_instance_methods
    }

    inspected.each do |type, methods|
      methods.each do |method|
        args = []

        method.parameters.each do |arg|
          args << {:method => arg_mapping[arg[0]], :name => arg[1]}
        end

        @methods[type][method.name] = args
      end
    end

    template          = File.read(DEFINITION_TEMPLATE)
    template          = ERB.new(template, nil, '-')
    template.filename = File.basename(DEFINITION_TEMPLATE)

    puts template.result
  end
end
