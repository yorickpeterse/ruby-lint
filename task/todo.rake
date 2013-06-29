desc 'Extracts TODO tags and the likes'
task :todo do
  regex = %w{FIXME TODO THINK @todo}.join('|')

  sh "ack '#{regex}' lib"
end
