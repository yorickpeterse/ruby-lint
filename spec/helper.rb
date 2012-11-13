require File.expand_path('../../lib/ruby-lint', __FILE__)
require 'bacon'

RubyLint::FIXTURES = File.expand_path('../fixtures', __FILE__)

Bacon.summary_on_exit
