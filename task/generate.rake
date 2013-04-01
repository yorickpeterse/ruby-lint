namespace :generate do
  desc 'Generates a set of definitions for a constant'
  task :definitions, :constant, :directory do |task, args|
    abort 'You have to specify a constant'  unless args[:constant]
    abort 'You have to specify a directory' unless args[:directory]

    generator = RubyLint::DefinitionGenerator.new(
      args[:constant],
      args[:directory],
      :overwrite => true
    )

    generator.generate
  end

  desc 'Generates definitions for all available constants'
  task :everything, :overwrite do |task, args|
    args.with_defaults(:overwrite => false)

    directory = File.expand_path(
      '../../lib/ruby-lint/definitions/core/',
      __FILE__
    )

    generator = RubyLint::DefinitionGenerator.new(
      Object,
      directory,
      :ignore    => %w{BasicObject Class GEMSPEC Module},
      :overwrite => !!args[:overwrite]
    )

    generator.generate
  end
end
