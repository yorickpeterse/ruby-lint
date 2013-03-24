RubyLint.global_scope.define_constant('Kernel') do |klass|
  klass.inherits(RubyLint.global_constant('Module'))

  Kernel.global_variables.each do |name|
    klass.define_global_variable(name.to_s)
  end

  %w{Array Float String}.each do |name|
    klass.define_method(name) do |method|
      method.define_argument('arg')
    end
  end

  %w{Complex Rational}.each do |name|
    klass.define_method(name) do |method|
      method.define_argument('x')
      method.define_optional_argument('y')
    end
  end

  klass.define_method('Integer') do |method|
    method.define_argument('arg')
    method.define_optional_argument('base')
  end

  klass.define_method('__callee__')
  klass.define_method('__method__')

  klass.define_method('`') do |method|
    method.define_argument('cmd')
  end

  klass.define_method('abort') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_method('at_exit') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('autoload') do |method|
    method.define_argument('constant')
    method.define_argument('path')
  end

  klass.define_method('autoload?') do |method|
    method.define_argument('constant')
  end

  klass.define_method('binding')

  %w{block_given? iterator?}.each do |name|
    klass.define_method(name)
  end

  klass.define_method('caller') do |method|
    method.define_optional_argument('start')
  end

  klass.define_method('catch') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end

  klass.define_method('eval') do |method|
    method.define_argument('string')

    method.define_optional_argument('binding')
    method.define_optional_argument('filename')
    method.define_optional_argument('lineno')
  end

  klass.define_method('exec') do |method|
    method.define_rest_argument('args')
  end

  %w{exit exit!}.each do |name|
    klass.define_method(name) do |method|
      method.define_optional_argument('status')
    end
  end

  %w{fail raise}.each do |name|
    klass.define_method(name) do |method|
      method.define_optional_argument('exception')
      method.define_optional_argument('string')
      method.define_optional_argument('array')
    end
  end

  klass.define_method('fork') do |method|
    method.define_block_argument('block')
  end

  %w{format sprintf}.each do |name|
    klass.define_method(name) do |method|
      method.define_argument('format_string')
      method.define_rest_argument('arguments')
    end
  end

  klass.define_method('gets') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('limit')
  end

  klass.define_method('lambda') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('load') do |method|
    method.define_argument('filename')
    method.define_optional_argument('wrap')
  end

  %w{global_variables local_variables}.each do |name|
    klass.define_method(name)
  end

  klass.define_method('loop') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('open') do |method|
    method.define_argument('path')

    method.define_optional_argument('mode_enc')
    method.define_optional_argument('perm')
    method.define_optional_argument('opt')
    method.define_block_argument('block')
  end

  klass.define_method('p') do |method|
    method.define_rest_argument('obj')
  end

  klass.define_method('print') do |method|
    method.define_rest_argument('obj')
  end

  klass.define_method('printf') do |method|
    method.define_optional_argument('io')
    method.define_optional_argument('string')
    method.define_rest_argument('obj')
  end

  klass.define_method('proc') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('putc') do |method|
    method.define_argument('int')
  end

  klass.define_method('puts') do |method|
    method.define_optional_argument('obj')
  end

  %w{rand srand}.each do |name|
    klass.define_method(name) do |method|
      method.define_optional_argument('max')
    end
  end

  %w{readline readlines}.each do |name|
    klass.define_method(name) do |method|
      method.define_optional_argument('sep')
      method.define_optional_argument('limit')
    end
  end

  klass.define_method('require') do |method|
    method.define_argument('name')
  end

  klass.define_method('require_relative') do |method|
    method.define_argument('string')
  end

  klass.define_method('select') do |method|
    method.define_optional_argument('rest')
  end

  klass.define_method('set_trace_func') do |method|
    method.define_argument('proc')
  end

  klass.define_method('sleep') do |method|
    method.define_optional_argument('duration')
  end

  klass.define_method('spawn') do |method|
    method.define_rest_argument('rest')
  end

  klass.define_method('syscall') do |method|
    method.define_argument('num')
    method.define_rest_argument('args')
  end

  klass.define_method('system') do |method|
    method.define_rest_argument('rest')
  end

  klass.define_method('test') do |method|
    method.define_argument('int_cmd')
    method.define_argument('file1')
    method.define_rest_argument('file2')
  end

  klass.define_method('throw') do |method|
    method.define_argument('tag')
    method.define_optional_argument('obj')
  end

  klass.define_method('trace_var') do |method|
    method.define_argument('symbol')
    method.define_optional_argument('cmd')
    method.define_block_argument('block')
  end

  klass.define_method('trap') do |method|
    method.define_argument('signal')
    method.define_block_argument('block')
  end

  klass.define_method('untrace_var') do |method|
    method.define_argument('symbol')
    method.define_optional_argument('cmd')
  end

  klass.define_method('warn') do |method|
    method.define_argument('msg')
  end

  %w{!~ <=> === =~}.each do |name|
    klass.define_instance_method(name) do |method|
      method.define_argument('other')
    end
  end
end

# Methods defined in Kernel (both class and instance methods) are globally
# available regardless of whether the code is evaluated in a class or instance
# context.
RubyLint.global_scope.copy(
  RubyLint.global_constant('Kernel'),
  :method,
  :instance_method
)
