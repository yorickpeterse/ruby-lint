module RubyLint
  ##
  # {RubyLint::FileScanner} is used for finding a list of files that could
  # potentially define a given Ruby constant (path).
  #
  # @!attribut [r] directories
  #  @return [Array]
  #
  class FileScanner
    attr_reader :directories

    ##
    # @param [#each] directories A collection of base directories to search in.
    #
    def initialize(directories = [Dir.pwd])
      unless directories.respond_to?(:each)
        raise TypeError, 'Directories must be specified as an Enumerable'
      end

      @directories = directories
    end

    ##
    # Tries to find `constant` in one of the directories. The return value is
    # an Array of file paths sorted from top-level to deeply nested structures
    # (e.g. `a.rb` comes before `foo/a.rb`).
    #
    # @param [String] constant
    # @return [Array]
    #
    def scan(constant)
      segment = constant_to_path(constant)
      paths   = Dir.glob(glob_pattern(segment))

      # Lets see if we can find anything when using dashes for the directory
      # names instead of underscores.
      if paths.empty?
        segment = constant_to_dashed_path(constant)
        paths   = Dir.glob(glob_pattern(segment))
      end

      # Ensure that the order is from top-level -> deeply nested files instead
      # of a random order.
      paths.sort! do |left, right|
        left.length <=> right.length
      end

      return paths
    end

    private

    ##
    # @param [String] constant
    # @return [String]
    #
    def constant_to_path(constant)
      return constant.gsub('::', '/').snake_case
    end

    ##
    # @see #constant_to_path
    #
    def constant_to_dashed_path(constant)
      segments = constant.split('::')
      last     = segments[-1]
      path     = segments[0..-2].join('/').snake_case.gsub('_', '-')

      return "#{path}/#{last.snake_case}"
    end

    ##
    # @param [String] segment
    # @return [String]
    #
    def glob_pattern(segment)
      return "{#{directories.join(',')}}/**/#{segment}.rb"
    end
  end # FileScanner
end # RubyLint
