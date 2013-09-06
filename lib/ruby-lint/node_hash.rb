module RubyLint
  ##
  # The NodeHash class is used to store information about {RubyLint::AST::Node}
  # instances based on their SHA1 hashes. It's primarily used by
  # {RubyLint::Runner} to store nodes and their associated comments.
  #
  # @!attribute [r] hash
  #  @return [Hash]
  #
  class NodeHash
    attr_reader :hash

    ##
    # Creates a new instance from a regular Hash.
    #
    # @param [Hash] hash
    # @return [RubyLint::NodeHash]
    #
    def self.from_hash(hash)
      converted = {}

      hash.each do |key, value|
        converted[key.sha1] = value
      end

      return new(converted)
    end

    ##
    # @param [Hash] hash
    #
    def initialize(hash = {})
      @hash = hash
    end

    ##
    # Returns the value associated with the given node.
    #
    # @param [RubyLint::AST::Node] node
    # @return [Mixed]
    #
    def [](node)
      return @hash[node.sha1]
    end

    ##
    # Checks if there's a value stored for the node.
    #
    # @param [RubyLint::AST::Node] node
    # @return [TrueClass|FalseClass]
    #
    def key?(node)
      return @hash.key?(node.sha1)
    end

    ##
    # Sets a value for the given node.
    #
    # @param [RubyLint::AST::Node] node
    # @param [Mixed] value
    #
    def []=(node, value)
      return @hash[node.sha1] = value
    end

    ##
    # @return [Array]
    #
    def keys
      return @hash.keys
    end

    ##
    # @return [Array]
    #
    def values
      return @hash.values
    end

    ##
    # @return [Array]
    #
    def to_a
      return @hash.to_a
    end

    ##
    # Merges the values of another NodeHash into the current one.
    #
    # @param [RubyLint::NodeHash] other
    #
    def merge!(other)
      @hash.merge!(other.hash)
    end

    ##
    # Merges a regular Hash into the current NodeHash.
    #
    # @param [Hash] hash
    #
    def merge_hash!(hash)
      merge!(self.class.from_hash(hash))
    end
  end # NodeHash
end # RubyLint
