##
# Constant: Shellwords
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Shellwords') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('escape') do |method|
    method.define_argument('str')
  end

  klass.define_method('join') do |method|
    method.define_argument('array')
  end

  klass.define_method('shellescape') do |method|
    method.define_argument('str')
  end

  klass.define_method('shelljoin') do |method|
    method.define_argument('array')
  end

  klass.define_method('shellsplit') do |method|
    method.define_argument('line')
  end

  klass.define_method('shellwords') do |method|
    method.define_argument('line')
  end

  klass.define_method('split') do |method|
    method.define_argument('line')
  end
end
