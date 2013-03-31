##
# Constant: MAIN
# Created:  2013-03-31 21:23:37 +0200
# Platform: rubinius 2.0.0.rc1 (1.9.3 6f2a1d90 yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('MAIN') do |klass|

  klass.define_method('__script__')

  klass.define_method('include') do |method|
    method.define_rest_argument('mods')
  end

  klass.define_method('inspect')

  klass.define_method('private') do |method|
    method.define_rest_argument('methods')
  end

  klass.define_method('public') do |method|
    method.define_rest_argument('methods')
  end

  klass.define_method('to_s')
end
