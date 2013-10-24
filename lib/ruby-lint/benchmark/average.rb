require 'benchmark'

module RubyLint
  module Benchmark
    ##
    # Benchmark class for measuring min/max/avg timings of a block of Ruby
    # code.
    #
    # @!attribute [r] iterations
    #  @return [Numeric]
    #
    # @!attribute [r] precision
    #  @return [Numeric]
    #
    class Average
      attr_reader :iterations, :precision

      ##
      # @return [Array]
      #
      AVERAGE_COLUMNS = %w(Iterations Minimum Maximum Average)

      ##
      # @return [String]
      #
      SEPARATOR = ' | '

      ##
      # Shorthand method for easily measuring a block.
      #
      # @see #measure
      #
      def self.measure(*args, &block)
        new(*args).measure(&block)
      end

      ##
      # @param [Numeric] iterations The amount of times to call the block.
      # @param [Numeric] precision The amount of decimals to display.
      #
      def initialize(iterations = 100, precision = 6)
        @iterations = iterations
        @precision  = precision
      end

      ##
      # Runs the given block N times and displays the minimum, maximum and average
      # execution times in secnds.
      #
      def measure
        timings = []

        iterations.times do
          timings << ::Benchmark.measure { yield }.real
        end

        avg = timings.inject(:+) / iterations

        show(timings.min, timings.max, avg)
      end

      ##
      # @param [Numeric] min
      # @param [Numeric] max
      # @param [Numeric] avg
      #
      def show(min, max, avg)
        values  = [iterations.to_s] + format_values([min, max, avg])
        padding = padding_length(AVERAGE_COLUMNS + values)

        show_header(padding)

        puts values.map { |val| val.ljust(padding) }.join(SEPARATOR)
      end

      private

      ##
      # Display the header.
      #
      # @param [Numeric] padding
      #
      def show_header(padding)
        header = format_header(padding)

        puts header
        puts header.gsub('|', '+').gsub(/[^+]/, '-')
      end

      ##
      # @param [Array] values
      # @return [Array<String>]
      #
      def format_values(values)
        return values.map { |val| "#{val.round(precision)} sec" }
      end

      ##
      # @param [Numeric] padding
      # @return [String]
      #
      def format_header(padding)
        return AVERAGE_COLUMNS.map { |val| val.ljust(padding) }.join(SEPARATOR)
      end

      ##
      # @param [Array] values
      # @return [Numeric]
      #
      def padding_length(values)
        return values.sort_by { |value| value.length }.last.length
      end
    end # Average
  end # Benchmark
end # RubyLint
