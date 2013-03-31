namespace :generate do
  desc 'Generates a set of definitions for a constant'
  task :methods, :constant do |task, args|
    abort 'You have to specify a constant' unless args[:constant]

    template  = File.read(DEFINITION_TEMPLATE)
    generator = RubyLint::DefinitionGenerator.new(args[:constant], template)

    puts generator.generate
  end

  desc 'Generates definitions for all available constants'
  task :everything, :overwrite do |task, args|
    args.with_defaults(:overwrite => false)

    template  = File.read(DEFINITION_TEMPLATE)
    constants = []

    Object.constants.each do |name|
      const = Object.const_get(name)

      if const.is_a?(Class) or const.is_a?(Module)
        constants << const.to_s
      end
    end

    largest = constants.sort do |current, right|
      right.length <=> current.length
    end

    largest  = largest[0].length
    existing = {
      # These constants require some extra work so they're ignored.
      'basic_object.rb' => true,
      'class.rb'        => true
    }

    existing_path = File.expand_path(
      '../../lib/ruby-lint/definitions/core/',
      __FILE__
    )

    Dir.glob(File.join(existing_path, '*.rb')) do |path|
      existing[File.basename(path)] = true
    end

    constants.sort.each do |constant|
      constant = constant.to_s
      filename = constant.snake_case + '.rb'

      if existing[filename] and !args[:overwrite]
        next
      end

      generator = RubyLint::DefinitionGenerator.new(constant, template)
      path      = File.join(existing_path, filename)

      File.open(path, 'w') do |handle|
        handle.write(generator.generate)
      end

      puts "%-#{largest}s: %s" % [constant, filename]
    end
  end
end
