Dir.glob('./spec/ruby-lint/**/*.rb') do |path|
  directory = File.dirname(path)
  new_name  = File.basename(path, '.rb') + '_spec.rb'
  new_file  = File.join(directory, new_name)

  lines = File.read(path).split("\n")

  File.rename(path, new_file)

  File.open(new_file, 'w') do |handle|
    lines.shift
    lines.unshift("require 'spec_helper'")

    handle.rewind
    handle.write(lines.join("\n"))
  end
end
