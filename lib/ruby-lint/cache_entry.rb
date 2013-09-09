module RubyLint
  ##
  # The CacheEntry class is used to store nodes, comments and file modification
  # times that belong to a certain root AST. It's primarily used by
  # {RubyLint::Runner}.
  #
  # @!attribute [r] nodes
  #  @return [Array]
  #
  # @!attribute [r] comments
  #  @return [Hash]
  #
  # @!attribute [r] mtimes
  #  @return [Hash]
  #
  class CacheEntry
    attr_reader :nodes, :comments, :mtimes

    ##
    # @param [Array] nodes
    # @param [Hash] comments
    # @param [Hash] mtimes
    #
    def initialize(nodes, comments, mtimes)
      @nodes    = nodes
      @comments = comments
      @mtimes   = mtimes
    end

    ##
    # Returns `true` if none of the associated files have been modified,
    # `false` otherwise.
    #
    # @return [TrueClass|FalseClass]
    #
    def valid?
      mtimes.each do |file, mtime|
        return false if File.mtime(file) != mtime
      end

      return true
    end
  end # CacheEntry
end # RubyLint
