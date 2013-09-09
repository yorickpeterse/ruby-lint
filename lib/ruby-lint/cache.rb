module RubyLint
  ##
  # The Cache class is used for storing arbitrary Ruby objects in a cache
  # directory. The primary use case of this class is to store cached ASTs and
  # their comment associations (as is done by {RubyLint::Runner}).
  #
  # @!attribute [r] directory
  #  @return [String]
  #
  class Cache
    attr_reader :directory

    ##
    # The version of the cache format.
    #
    # @return [String]
    #
    FORMAT_VERSION = '1'

    ##
    # @param [String] directory Path to the cache directory.
    #
    def initialize(directory)
      @directory = directory
    end

    ##
    # Creates the directory specified in {#directory} unless it already exists.
    #
    def create_directory!
      Dir.mkdir(directory) unless File.directory?(directory)
    end

    ##
    # Checks if there's a cache entry for the given name.
    #
    # @return [TrueClass|FalseClass]
    #
    def exists?(name)
      return File.file?(entry_filepath(name))
    end

    ##
    # Returns the cache entry for the given name or `nil` if the entry doesn't
    # exist.
    #
    # @param [String] name
    # @return [Mixed]
    #
    def get(name)
      return unless exists?(name)

      data = File.read(entry_filepath(name))

      return decode(data)
    end

    ##
    # Sets the cache entry to the given value. Existing cache entries are
    # overwritten.
    #
    # @param [String] name
    # @param [Mixed] value
    #
    def set(name, value)
      File.open(entry_filepath(name), 'w') do |handle|
        handle.write(encode(value))
      end
    end

    ##
    # Removes a cache entry.
    #
    # @param [String] name
    #
    def delete(name)
      File.unlink(entry_filepath(name)) if exists?(name)
    end

    private

    ##
    # Returns the filename for the given entry name.
    #
    # @param [String] name
    # @return [String]
    #
    def entry_filename(name)
      return "#{name}.#{FORMAT_VERSION}.cache"
    end

    ##
    # Returns the full filename of the cache entry's name.
    #
    # @param [String] name
    # @return [String]
    #
    def entry_filepath(name)
      return File.join(directory, entry_filename(name))
    end

    ##
    # Decodes a cache entry.
    #
    # @param [String] input
    # @return [Mixed]
    #
    def decode(input)
      return Marshal.load(Zlib::Inflate.inflate(input))
    end

    ##
    # Encodes a cache entry.
    #
    # @param [String] input
    #
    def encode(input)
      return Zlib::Deflate.deflate(Marshal.dump(input))
    end
  end # Cache
end # RubyLint
