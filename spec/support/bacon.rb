# Bacon's output is a bit annoying for the sexp output of RubyLint::Node. This
# patch changes it to make it a lot easier to read.
class Should
  def method_missing(name, *args, &block)
    name    = "#{name}?"  if name.to_s =~ /\w[^?]\z/
    negated = @negated ? " not " : " "
    desc    = ''

    desc << "\n\nGot (using#{negated}#{name}):\n\n" << @object.inspect
    desc << "\n\nExpected:\n\n" << args.map{|x|x.inspect}.join(", ") << "\n"

    satisfy(desc) { |x| x.__send__(name, *args, &block) }
  end
end

# Show performance related information after running the tests.
module Bacon
  class << self
    alias old_handle_summary handle_summary
  end

  def self.handle_summary
    old_handle_summary

    memory    = `ps -o rss= #{Process.pid}`.strip.to_f
    memory_mb = (memory / 1024)
    time_secs = (Time.now - @timer)
    time_ms   = time_secs * 1000

    puts '%i KB (%.2f MB) used in %.2f miliseconds (%.2f seconds)' \
      % [memory, memory_mb, time_ms, time_secs]
  end
end
