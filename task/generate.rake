namespace :generate do
  desc 'Generates a set of definitions for a constant'
  task :methods, :constant do |task, args|
    abort 'You have to specify a constant' unless args[:constant]

    template  = File.read(DEFINITION_TEMPLATE)
    generator = RubyLint::DefinitionGenerator.new(args[:constant], template)

    puts generator.generate
  end

  desc 'Generates definitions for all available constants'
  task :everything do
    template  = File.read(DEFINITION_TEMPLATE)
    directory = '/tmp/ruby-lint'

    Dir.mkdir(directory) unless File.directory?(directory)

    largest = Object.constants.map(&:to_s).sort do |current, right|
      right.length <=> current.length
    end

    largest = largest[0].length

    Object.constants.sort.each do |constant|
      constant  = constant.to_s
      generator = RubyLint::DefinitionGenerator.new(constant, template)
      filename  = constant.gsub(/([a-z])([A-Z])/, '\\1_\\2').downcase + '.rb'
      path      = File.join(directory, filename)

      File.open(path, 'w') do |handle|
        handle.write(generator.generate)
      end

      puts "%-#{largest}s: %s" % [constant, path]
    end
  end
end
