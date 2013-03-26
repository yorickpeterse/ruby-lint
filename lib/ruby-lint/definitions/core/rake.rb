##
# Constant: Rake
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Rake') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('application')

  klass.define_method('application=') do |method|
    method.define_argument('app')
  end

  klass.define_method('each_dir_parent') do |method|
    method.define_argument('dir')
  end

  klass.define_method('load_rakefile') do |method|
    method.define_argument('path')
  end

  klass.define_method('original_dir')
end
