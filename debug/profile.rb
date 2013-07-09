require 'ruby-prof'

result = RubyProf.profile do
  require_relative '../lib/ruby-lint'
  require_relative '../lib/ruby-lint/definitions/rails'
end

result.eliminate_methods!([
  /Kernel#require/,
  /Kernel#gem_original_require/,
  /Module#module_eval/,
  /^Gem/,
  /^Parser/
])

printer = RubyProf::GraphPrinter.new(result)

printer.print(STDOUT)
