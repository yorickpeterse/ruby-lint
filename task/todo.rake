desc 'Extracts TODO tags and the likes'
task :todo do
  regex = %w{NOTE: FIXME: TODO: THINK: @todo}.join('|')

  sh "grep --color -R -P '#{regex}' lib"
end
