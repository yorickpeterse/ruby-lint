# Loads all stdlib files and writes a list of constants to a text file. This is
# run outside of Rake to ensure a clean environment not polluted by Rake and
# other loaded dependencies.

require_relative 'requires'

# These are maintained manually.
ignore = DATA.read.split("\n")
consts = Object.constants.map(&:to_s) - ignore

File.open(File.expand_path('../constants.txt', __FILE__), 'w') do |handle|
  handle.write(consts.sort.join("\n"))
end

__END__
ARGV
BasicObject
Class
ENV
Kernel
Module
RSS
Rubinius
RubyLex
RubySL
RubyToken
Rubysl
STDERR
STDIN
STDOUT
