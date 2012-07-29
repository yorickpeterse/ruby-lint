require File.expand_path('../../lib/rlint', __FILE__)
require 'bacon'

Bacon.extend(Bacon::TapOutput)
Bacon.summary_on_exit
