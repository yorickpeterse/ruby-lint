[
  :$;, :$-F, :$@, :$!, :$SAFE, :$~, :$&, :$`, :$', :$+, :$=, :$KCODE, :$-K,
  :$,, :$/, :$-0, :$\, :$_, :$stdin, :$stdout, :$stderr, :$>, :$<, :$.,
  :$FILENAME, :$-i, :$*, :$?, :$$, :$:, :$-I, :$LOAD_PATH, :$",
  :$LOADED_FEATURES, :$VERBOSE, :$-v, :$-w, :$-W, :$DEBUG, :$-d, :$0,
  :$PROGRAM_NAME, :$-p, :$-l, :$-a, :$1, :$2, :$3, :$4, :$5, :$6, :$7, :$8, :$9
].each do |name|
  RubyLint::VirtualMachine.global_scope.define_global_variable(name.to_s)
end
