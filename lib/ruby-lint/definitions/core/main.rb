##
# Constant: MAIN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
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