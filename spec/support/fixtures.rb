##
# Returns the source code of a fixture file.
#
# @param [String] path The path to the fixture file, relative to the fixture
#  directory
# @return [String]
#
def fixture(path)
  file = File.join(File.expand_path('../../fixtures', __FILE__), path)

  return File.read(file)
end
