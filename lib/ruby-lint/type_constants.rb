module RubyLint
  ##
  # Hash containing various node types and the corresponding Ruby constants.
  #
  # @return [Hash]
  #
  TYPE_CONSTANTS = {
    :string  => 'String',
    :integer => 'Numeric',
    :float   => 'Float',
    :symbol  => 'Symbol',
    :array   => 'Array',
    :hash    => 'Hash',
    :block   => 'Proc',
    :lambda  => 'Proc',
    :regexp  => 'Regexp',
    :range   => 'Range'
  }
end # RubyLint
