module Rlint
  ##
  # Hash containing all the default constants. The keys are the constant names
  # stored as a string and the values are set to `true`.
  #
  # @return [Hash]
  #
  DEFAULT_CONSTANTS = {}

  Object.constants.each do |const|
    DEFAULT_CONSTANTS[const.to_s] = true
  end
end # Rlint
