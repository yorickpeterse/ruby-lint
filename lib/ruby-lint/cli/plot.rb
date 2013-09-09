#:nocov:
RubyLint::CLI.options.command :plot do
  banner      'Usage: ruby-lint plot [FILE] [OPTIONS]'
  description 'Plots analysis time of a single file'

  separator RubyLint::CLI::OPTIONS_HEADER

  RubyLint::CLI.help_option(self)

  on :i=, :iterations=,
    'The amount of iterations',
    :as      => Integer,
    :default => 100

  ##
  # @param [String] basename
  # @param [Array] no_cache
  # @param [Array] cache
  # @param [Hash] options
  #
  def plot_timings(basename, no_cache, cache, options)
    x_points = (1..options[:iterations]).to_a

    Gnuplot.open do |gp|
      Gnuplot::Plot.new(gp) do |plot|
        plot.title "#{basename} with #{options[:iterations]} iterations"

        plot.xlabel 'Iteration'
        plot.ylabel 'Time (ms)'

        plot.data << Gnuplot::DataSet.new([x_points, no_cache]) do |ds|
          ds.with  = 'lines'
          ds.title = 'No caching'
        end

        plot.data << Gnuplot::DataSet.new([x_points, cache]) do |ds|
          ds.with  = 'lines'
          ds.title = 'Caching'
        end
      end
    end
  end

  ##
  # Measures the analysis time of a given file.
  #
  # @param [String] file
  # @param [Fixnum] amount
  # @param [TrueClass|FalseClass] caching
  #
  def measure_analysis(file, amount, caching = false)
    configuration = RubyLint::Configuration.load_from_file
    configuration.enable_cache = caching

    FileUtils.rm_rf(configuration.cache_directory) if caching

    files   = [file]
    runner  = RubyLint::Runner.new(configuration)
    timings = []

    amount.times do
      timing = Benchmark.measure { runner.analyze(files) }

      timings << timing.real * 1000
    end

    return timings
  end

  run do |opts, args|
    require 'gnuplot'
    require 'fileutils'
    require 'benchmark'

    abort 'No files specified' if args.empty?

    abort "The file #{args[0]} does not exist" unless File.file?(args[0])

    puts 'Measuring, this will take a while...'

    no_cache = measure_analysis(args[0], opts[:iterations])
    cache    = measure_analysis(args[0], opts[:iterations], true)

    plot_timings(File.basename(args[0]), no_cache, cache, opts)
  end
end
#:nocov:
