##
# Returns the source code of a fixture file.
#
# @param [String] path The path to the fixture file, relative to the fixture
#  directory
# @return [String]
#
def fixture(path)
  return File.read(fixture_path(path))
end

##
# Returns the path to the given fixture file.
#
# @param [String] path The path relative to the fixtures directory.
# @return [String]
#
def fixture_path(path)
  return File.join(File.expand_path('../../fixtures', __FILE__), path)
end
