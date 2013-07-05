desc 'Runs rubocop on lib/'
task :cop do
  if `which rubocop 2>&1` =~ /no rubocop in/
    abort <<-EOF.strip
Rubocop is not installed, install it by running `gem insatll rubocop`.
Make sure that you install version 0.9.0 or newer.
    EOF
  end

  sh 'rubocop lib/'
end
