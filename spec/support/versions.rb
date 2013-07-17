##
# Yields the supplied block if the current Ruby version matches the specified
# one.
#
# @param [String] version
#
def specific_ruby_version(version)
  yield if RedCard.check(version)
end
