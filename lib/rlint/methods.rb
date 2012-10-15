module Rlint
  ##
  # Hash that contains all the class and instance methods of core Ruby types
  #
  # @return [Hash]
  #
  METHODS = ConstantImporter.import(Object.constants)
end # Rlint
