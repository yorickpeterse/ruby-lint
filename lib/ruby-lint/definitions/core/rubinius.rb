##
# Constant: Rubinius
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('add_defn_method') do |method|
    method.define_argument('name')
    method.define_argument('executable')
    method.define_argument('constant_scope')
    method.define_argument('vis')
  end

  klass.define_method('add_method') do |method|
    method.define_argument('name')
    method.define_argument('executable')
    method.define_argument('mod')
    method.define_argument('vis')
  end

  klass.define_method('add_method_hook')

  klass.define_method('add_reader') do |method|
    method.define_argument('name')
    method.define_argument('mod')
    method.define_argument('vis')
  end

  klass.define_method('add_writer') do |method|
    method.define_argument('name')
    method.define_argument('mod')
    method.define_argument('vis')
  end

  klass.define_method('agent_loopback')

  klass.define_method('agent_start')

  klass.define_method('allocation_site') do |method|
    method.define_argument('obj')
  end

  klass.define_method('attach_method') do |method|
    method.define_argument('name')
    method.define_argument('executable')
    method.define_argument('constant_scope')
    method.define_argument('recv')
  end

  klass.define_method('bsd?')

  klass.define_method('catch') do |method|
    method.define_argument('dest')
    method.define_argument('obj')
  end

  klass.define_method('check_interrupts')

  klass.define_method('compile_file') do |method|
    method.define_argument('name')
  end

  klass.define_method('current_file')

  klass.define_method('darwin?')

  klass.define_method('deoptimize_all') do |method|
    method.define_argument('disable')
  end

  klass.define_method('deoptimize_inliners') do |method|
    method.define_argument('exec')
  end

  klass.define_method('dtrace_fire') do |method|
    method.define_argument('payload')
  end

  klass.define_method('extended_modules') do |method|
    method.define_argument('obj')
  end

  klass.define_method('find_method') do |method|
    method.define_argument('obj')
    method.define_argument('name')
  end

  klass.define_method('find_public_method') do |method|
    method.define_argument('obj')
    method.define_argument('name')
  end

  klass.define_method('get_user_home') do |method|
    method.define_argument('name')
  end

  klass.define_method('inc_global_serial')

  klass.define_method('jump_error') do |method|
    method.define_argument('name')
  end

  klass.define_method('kcode')

  klass.define_method('kcode=') do |method|
    method.define_argument('str')
  end

  klass.define_method('linux?')

  klass.define_method('lock') do |method|
    method.define_argument('obj')
  end

  klass.define_method('lock_timed') do |method|
    method.define_argument('obj')
    method.define_argument('duration')
  end

  klass.define_method('locked?') do |method|
    method.define_argument('obj')
  end

  klass.define_method('memory_barrier')

  klass.define_method('memory_size') do |method|
    method.define_argument('obj')
  end

  klass.define_method('method_missing_reason')

  klass.define_method('mri_backtrace') do |method|
    method.define_argument('skip')
  end

  klass.define_method('open_class') do |method|
    method.define_argument('name')
    method.define_argument('sup')
    method.define_argument('scope')
  end

  klass.define_method('open_class_under') do |method|
    method.define_argument('name')
    method.define_argument('sup')
    method.define_argument('mod')
  end

  klass.define_method('open_module') do |method|
    method.define_argument('name')
    method.define_argument('scope')
  end

  klass.define_method('open_module_under') do |method|
    method.define_argument('name')
    method.define_argument('mod')
  end

  klass.define_method('pack_to_float') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pack_to_int') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pack_to_s') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pack_to_str') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pack_to_str_or_nil') do |method|
    method.define_argument('obj')
  end

  klass.define_method('raise_exception') do |method|
    method.define_argument('exc')
  end

  klass.define_method('received_signal') do |method|
    method.define_argument('sig')
  end

  klass.define_method('ruby18?')

  klass.define_method('ruby19?')

  klass.define_method('ruby20?')

  klass.define_method('run_script') do |method|
    method.define_argument('compiled_code')
  end

  klass.define_method('set_data') do |method|
    method.define_argument('name')
    method.define_argument('offset')
  end

  klass.define_method('synchronize') do |method|
    method.define_argument('obj')
  end

  klass.define_method('thread_state')

  klass.define_method('throw') do |method|
    method.define_argument('dest')
    method.define_argument('obj')
  end

  klass.define_method('try_lock') do |method|
    method.define_argument('obj')
  end

  klass.define_method('uninterrupted_lock') do |method|
    method.define_argument('obj')
  end

  klass.define_method('unlock') do |method|
    method.define_argument('obj')
  end

  klass.define_method('unrecognized_defined') do |method|
    method.define_argument('file')
    method.define_argument('line')
  end

  klass.define_method('version')

  klass.define_method('watch_signal') do |method|
    method.define_argument('sig')
    method.define_argument('ignored')
  end

  klass.define_method('windows?')
end

##
# Constant: Rubinius::ARGFClass
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::ARGFClass') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('binmode')

  klass.define_instance_method('bytes') do |method|
    method.define_block_argument('b')
  end

  klass.define_instance_method('chars') do |method|
    method.define_block_argument('b')
  end

  klass.define_instance_method('close')

  klass.define_instance_method('closed?')

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_byte')

  klass.define_instance_method('each_char') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_line')

  klass.define_instance_method('eof')

  klass.define_instance_method('eof?')

  klass.define_instance_method('file')

  klass.define_instance_method('filename')

  klass.define_instance_method('fileno')

  klass.define_instance_method('getbyte')

  klass.define_instance_method('getc')

  klass.define_instance_method('gets') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('initialize')

  klass.define_instance_method('lineno')

  klass.define_instance_method('lineno=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('lines') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('path')

  klass.define_instance_method('pos')

  klass.define_instance_method('pos=') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('read') do |method|
    method.define_optional_argument('bytes')
    method.define_optional_argument('output')
  end

  klass.define_instance_method('readbyte')

  klass.define_instance_method('readchar')

  klass.define_instance_method('readline') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('readlines') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('rewind')

  klass.define_instance_method('seek') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('skip')

  klass.define_instance_method('tell')

  klass.define_instance_method('to_a') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_io')

  klass.define_instance_method('to_s')
end

##
# Constant: Rubinius::ARGFClass::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::ARGFClass::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::AST
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rubinius::AST::AccessUndefined
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::AccessUndefined') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Send'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::AccessUndefined::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::AccessUndefined::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ActualArguments
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ActualArguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('array')

  klass.define_instance_method('array=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('masgn_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('splat')

  klass.define_instance_method('splat=')

  klass.define_instance_method('splat?')

  klass.define_instance_method('stack_size')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ActualArguments::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ActualArguments::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Alias
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Alias') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('from')

  klass.define_instance_method('from=')

  klass.define_instance_method('to')

  klass.define_instance_method('to=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Alias::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Alias::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::And
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::And') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_optional_argument('use_gif')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('left')

  klass.define_instance_method('left=')

  klass.define_instance_method('right')

  klass.define_instance_method('right=')

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::And::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::And::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ArrayLiteral
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ArrayLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ArrayLiteral::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ArrayLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::AsciiGrapher
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::AsciiGrapher') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('graph_node') do |method|
    method.define_argument('node')
    method.define_optional_argument('level')
    method.define_optional_argument('idx')
  end

  klass.define_instance_method('graph_simple') do |method|
    method.define_argument('name')
    method.define_argument('value')
    method.define_argument('level')
  end

  klass.define_instance_method('graph_value') do |method|
    method.define_argument('name')
    method.define_argument('value')
    method.define_argument('level')
  end

  klass.define_instance_method('indented_print') do |method|
    method.define_argument('level')
    method.define_argument('value')
  end

  klass.define_instance_method('print')

  klass.define_instance_method('print_node') do |method|
    method.define_argument('node')
    method.define_argument('level')
    method.define_optional_argument('idx')
  end
end

##
# Constant: Rubinius::AST::AttributeAssignment
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::AttributeAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::AttributeAssignment::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::AttributeAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::BackRef
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BackRef') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('kind')

  klass.define_instance_method('kind=')

  klass.define_instance_method('mode')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::BackRef::Kinds
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BackRef::Kinds') do |klass|
end

##
# Constant: Rubinius::AST::BackRef::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BackRef::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Begin
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Begin') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('rescue')

  klass.define_instance_method('rescue=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Begin::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Begin::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Block
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Block') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('array')

  klass.define_instance_method('array=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('locals')

  klass.define_instance_method('locals=')

  klass.define_instance_method('strip_arguments')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Block::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Block::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::BlockArgument
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BlockArgument') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')
end

##
# Constant: Rubinius::AST::BlockArgument::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BlockArgument::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::BlockGiven
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BlockGiven') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Send'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::BlockGiven::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BlockGiven::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::BlockPass
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BlockPass') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assignment_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('convert') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::BlockPass19
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BlockPass19') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::BlockPass'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')
end

##
# Constant: Rubinius::AST::BlockPass19::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BlockPass19::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::BlockPass::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::BlockPass::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Break
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Break') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('jump_error') do |method|
    method.define_argument('g')
    method.define_argument('name')
  end

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::Break::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Break::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::CallCustom
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::CallCustom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::CallCustom::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::CallCustom::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Case
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Case') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('else')

  klass.define_instance_method('else=')

  klass.define_instance_method('receiver_sexp')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('whens')

  klass.define_instance_method('whens=')
end

##
# Constant: Rubinius::AST::Case::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Case::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::CheckFrozen
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::CheckFrozen') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::CheckFrozen::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::CheckFrozen::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Class
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Class') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('superclass')

  klass.define_instance_method('superclass=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Class::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Class::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ClassName
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassName') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('name_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('superclass')

  klass.define_instance_method('superclass=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ClassName::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassName::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ClassScope
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassScope') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ClosedScope'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('module?')
end

##
# Constant: Rubinius::AST::ClassScope::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassScope::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ClassVariableAccess
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassVariableAccess') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::VariableAccess'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('or_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('push_scope') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('variable_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::ClassVariableAccess::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassVariableAccess::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ClassVariableAssignment
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassVariableAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::VariableAssignment'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::ClassVariableAssignment::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassVariableAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ClassVariableDeclaration
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassVariableDeclaration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ClassVariableAssignment'))

  klass.define_method('__class_init__')

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::ClassVariableDeclaration::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClassVariableDeclaration::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ClosedScope
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClosedScope') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assign_local_reference') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('attach_and_call') do |method|
    method.define_argument('g')
    method.define_argument('arg_name')
    method.define_optional_argument('scoped')
    method.define_optional_argument('pass_block')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('module?')

  klass.define_instance_method('nest_scope') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('new_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('new_nested_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('search_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ClosedScope::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ClosedScope::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::CollectSplat
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::CollectSplat') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::CollectSplat::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::CollectSplat::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ConcatArgs
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ConcatArgs') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('array')

  klass.define_instance_method('array=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('peel_lhs')

  klass.define_instance_method('rest')

  klass.define_instance_method('rest=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ConcatArgs::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ConcatArgs::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ConstantAccess
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ConstantAccess') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assign_bytecode') do |method|
    method.define_argument('g')
    method.define_argument('value')
  end

  klass.define_instance_method('assign_sexp')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('masgn_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::ConstantAccess::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ConstantAccess::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ConstantAssignment
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ConstantAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('constant')

  klass.define_instance_method('constant=')

  klass.define_instance_method('masgn_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::ConstantAssignment::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ConstantAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Container
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Container') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ClosedScope'))

  klass.define_method('__class_init__')

  klass.define_instance_method('container_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('file=')

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('pop_state') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('pre_exe')

  klass.define_instance_method('pre_exe=')

  klass.define_instance_method('push_state') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('variable_scope')

  klass.define_instance_method('variable_scope=')
end

##
# Constant: Rubinius::AST::Container::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Container::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::CurrentException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::CurrentException') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::CurrentException::TransformState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::CurrentException::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::DefaultArguments
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DefaultArguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('map_arguments') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('names')

  klass.define_instance_method('names=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::DefaultArguments::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DefaultArguments::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Define
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Define') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ClosedScope'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('compile_body') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Define::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Define::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::DefineSingleton
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DefineSingleton') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('receiver')

  klass.define_instance_method('receiver=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::DefineSingleton::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DefineSingleton::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::DefineSingletonScope
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DefineSingletonScope') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Define'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_argument('recv')
  end
end

##
# Constant: Rubinius::AST::DefineSingletonScope::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DefineSingletonScope::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Defined
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Defined') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('expression')

  klass.define_instance_method('expression=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Defined::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Defined::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::DynamicExecuteString
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicExecuteString') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::DynamicString'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::DynamicExecuteString::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicExecuteString::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::DynamicOnceRegex
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicOnceRegex') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::DynamicRegex'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::DynamicOnceRegex::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicOnceRegex::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::DynamicRegex
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicRegex') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::DynamicString'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::DynamicRegex::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicRegex::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::DynamicString
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicString') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::StringLiteral'))

  klass.define_method('__class_init__')

  klass.define_instance_method('array')

  klass.define_instance_method('array=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('options')

  klass.define_instance_method('options=')

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::DynamicString::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicString::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::DynamicSymbol
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicSymbol') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::DynamicString'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::DynamicSymbol::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::DynamicSymbol::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ElementAssignment
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ElementAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('masgn_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::ElementAssignment::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ElementAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::EmptyArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EmptyArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::EmptyArray::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EmptyArray::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::EmptyBody
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EmptyBody') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::EmptyBody::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EmptyBody::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::EmptySplat
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EmptySplat') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::EmptySplat::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EmptySplat::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Encoding
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Encoding') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Encoding::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Encoding::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::EndData
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EndData') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('data=')
end

##
# Constant: Rubinius::AST::EndData::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EndData::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Ensure
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Ensure') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('ensure')

  klass.define_instance_method('ensure=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Ensure::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Ensure::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::EnsureType
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EnsureType') do |klass|
end

##
# Constant: Rubinius::AST::EvalExpression
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EvalExpression') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Container'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assign_local_reference') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('new_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('push_state') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('search_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('search_scopes') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('should_cache?')
end

##
# Constant: Rubinius::AST::EvalExpression::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::EvalExpression::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Evaluator
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Evaluator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('execute') do |method|
    method.define_argument('node')
  end

  klass.define_instance_method('get_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('self')

  klass.define_instance_method('self=')

  klass.define_instance_method('set_local') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end
end

##
# Constant: Rubinius::AST::ExecuteString
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ExecuteString') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::StringLiteral'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ExecuteString::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ExecuteString::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::FalseLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FalseLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::FalseLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FalseLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::File
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::File') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::File::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::File::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::FixnumLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FixnumLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::NumberLiteral'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::FixnumLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FixnumLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Flip2
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Flip2') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('exclusive?')

  klass.define_instance_method('get_flip_flop') do |method|
    method.define_argument('g')
    method.define_argument('index')
  end

  klass.define_instance_method('set_flip_flop') do |method|
    method.define_argument('g')
    method.define_argument('index')
    method.define_argument('value')
  end

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Flip2::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Flip2::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Flip3
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Flip3') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Flip2'))

  klass.define_method('__class_init__')

  klass.define_instance_method('exclusive?')

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::Flip3::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Flip3::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::FloatLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FloatLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::FloatLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FloatLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::For
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::For') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Iter'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assign_local_reference') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('nest_scope') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('new_nested_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('search_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::For19
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::For19') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::For'))

  klass.define_method('__class_init__')
end

##
# Constant: Rubinius::AST::For19::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::For19::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::For19Arguments
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::For19Arguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('post_args')

  klass.define_instance_method('required_args')

  klass.define_instance_method('splat_index')

  klass.define_instance_method('total_args')
end

##
# Constant: Rubinius::AST::For19Arguments::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::For19Arguments::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::For::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::For::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::FormalArguments
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FormalArguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arity')

  klass.define_instance_method('block_arg')

  klass.define_instance_method('block_arg=') do |method|
    method.define_argument('node')
  end

  klass.define_instance_method('block_index')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defaults')

  klass.define_instance_method('defaults=')

  klass.define_instance_method('map_arguments') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('names')

  klass.define_instance_method('names=')

  klass.define_instance_method('optional')

  klass.define_instance_method('optional=')

  klass.define_instance_method('post_args')

  klass.define_instance_method('required')

  klass.define_instance_method('required=')

  klass.define_instance_method('required_args')

  klass.define_instance_method('splat')

  klass.define_instance_method('splat=')

  klass.define_instance_method('splat_index')

  klass.define_instance_method('to_actual') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('total_args')
end

##
# Constant: Rubinius::AST::FormalArguments19
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FormalArguments19') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::FormalArguments'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('map_arguments') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('post')

  klass.define_instance_method('post=')

  klass.define_instance_method('post_args')

  klass.define_instance_method('required_args')

  klass.define_instance_method('splat_index')

  klass.define_instance_method('total_args')
end

##
# Constant: Rubinius::AST::FormalArguments19::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FormalArguments19::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::FormalArguments::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::FormalArguments::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::GlobalVariableAccess
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::GlobalVariableAccess') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::VariableAccess'))

  klass.define_method('__class_init__')

  klass.define_method('for_name') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('variable_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::GlobalVariableAccess::EnglishBackrefs
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::GlobalVariableAccess::EnglishBackrefs') do |klass|
end

##
# Constant: Rubinius::AST::GlobalVariableAccess::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::GlobalVariableAccess::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::GlobalVariableAssignment
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::GlobalVariableAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::VariableAssignment'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::GlobalVariableAssignment::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::GlobalVariableAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::HashLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::HashLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('array')

  klass.define_instance_method('array=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::HashLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::HashLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::If
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::If') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('condition')

  klass.define_instance_method('condition=')

  klass.define_instance_method('else')

  klass.define_instance_method('else=')

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::If::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::If::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::InlineAssembly
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::InlineAssembly') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::InlineAssembly::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::InlineAssembly::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::InstanceVariableAccess
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::InstanceVariableAccess') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::VariableAccess'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('variable_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::InstanceVariableAccess::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::InstanceVariableAccess::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::InstanceVariableAssignment
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::InstanceVariableAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::VariableAssignment'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::InstanceVariableAssignment::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::InstanceVariableAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::InvokePrimitive
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::InvokePrimitive') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::InvokePrimitive::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::InvokePrimitive::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Iter
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Iter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')

  klass.define_instance_method('assign_local_reference') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('block_local?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('module?')

  klass.define_instance_method('nest_scope') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('new_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('new_nested_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('search_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Iter19
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Iter19') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Iter'))

  klass.define_method('__class_init__')

  klass.define_instance_method('block_local?') do |method|
    method.define_argument('name')
  end
end

##
# Constant: Rubinius::AST::Iter19::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Iter19::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Iter::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Iter::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::IterArguments
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::IterArguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')

  klass.define_instance_method('arguments_bytecode') do |method|
    method.define_argument('g')
    method.define_optional_argument('is_array')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('arity=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('names')

  klass.define_instance_method('optional')

  klass.define_instance_method('optional=')

  klass.define_instance_method('post_args')

  klass.define_instance_method('prelude')

  klass.define_instance_method('prelude=')

  klass.define_instance_method('required_args')

  klass.define_instance_method('required_args=')

  klass.define_instance_method('splat_index')

  klass.define_instance_method('splat_index=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('total_args')
end

##
# Constant: Rubinius::AST::IterArguments::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::IterArguments::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Literal
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Literal') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end
end

##
# Constant: Rubinius::AST::LocalVariable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::LocalVariable') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('variable')

  klass.define_instance_method('variable=')
end

##
# Constant: Rubinius::AST::LocalVariableAccess
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::LocalVariableAccess') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::VariableAccess'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::LocalVariableAccess::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::LocalVariableAccess::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::LocalVariableAssignment
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::LocalVariableAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::VariableAssignment'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::LocalVariableAssignment::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::LocalVariableAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Match
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Match') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('pattern')

  klass.define_instance_method('pattern=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Match2
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Match2') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('pattern')

  klass.define_instance_method('pattern=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::Match2::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Match2::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Match3
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Match3') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('pattern')

  klass.define_instance_method('pattern=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::Match3::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Match3::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Match::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Match::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::MirrorConstant
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::MirrorConstant') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::MirrorConstant::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::MirrorConstant::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Module
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Module') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Module::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Module::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ModuleName
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ModuleName') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('name_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ModuleName::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ModuleName::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ModuleScope
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ModuleScope') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ClosedScope'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('module?')
end

##
# Constant: Rubinius::AST::ModuleScope::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ModuleScope::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::MultipleAssignment
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::MultipleAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('block')

  klass.define_instance_method('block=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_optional_argument('array_on_stack')
  end

  klass.define_instance_method('declare_local_scope') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('iter_arguments')

  klass.define_instance_method('left')

  klass.define_instance_method('left=')

  klass.define_instance_method('make_array') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('pad_short') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('pop_excess') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('right')

  klass.define_instance_method('right=')

  klass.define_instance_method('rotate') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('splat')

  klass.define_instance_method('splat=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::MultipleAssignment::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::MultipleAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Negate
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Negate') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::Negate::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Negate::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Next
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Next') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Break'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::Next::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Next::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::NilLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::NilLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::NilLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::NilLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Node
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Node') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('match_arguments?') do |method|
    method.define_argument('arguments')
    method.define_argument('count')
  end

  klass.define_method('match_send?') do |method|
    method.define_argument('node')
    method.define_argument('receiver')
    method.define_argument('method')
    method.define_argument('name')
  end

  klass.define_method('transform') do |method|
    method.define_argument('category')
    method.define_argument('name')
    method.define_argument('comment')
  end

  klass.define_method('transform_comment')

  klass.define_method('transform_kind')

  klass.define_method('transform_kind=') do |method|
    method.define_argument('k')
  end

  klass.define_method('transform_name')

  klass.define_instance_method('ascii_graph')

  klass.define_instance_method('attributes')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('children')

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('line')

  klass.define_instance_method('line=')

  klass.define_instance_method('new_block_generator') do |method|
    method.define_argument('g')
    method.define_argument('arguments')
  end

  klass.define_instance_method('new_generator') do |method|
    method.define_argument('g')
    method.define_argument('name')
    method.define_optional_argument('arguments')
  end

  klass.define_instance_method('node_name')

  klass.define_instance_method('or_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('pos') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('set_child') do |method|
    method.define_argument('name')
    method.define_argument('node')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('transform') do |method|
    method.define_argument('visitor')
    method.define_optional_argument('parent')
    method.define_optional_argument('state')
  end

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end

  klass.define_instance_method('visit') do |method|
    method.define_argument('visitor')
    method.define_optional_argument('parent')
  end

  klass.define_instance_method('walk') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end
end

##
# Constant: Rubinius::AST::Node::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Node::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Not
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Not') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::Not::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Not::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::NthRef
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::NthRef') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('which')

  klass.define_instance_method('which=')
end

##
# Constant: Rubinius::AST::NthRef::Mode
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::NthRef::Mode') do |klass|
end

##
# Constant: Rubinius::AST::NthRef::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::NthRef::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::NumberLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::NumberLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::NumberLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::NumberLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::OpAssign1
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssign1') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('op')

  klass.define_instance_method('op=')

  klass.define_instance_method('receiver')

  klass.define_instance_method('receiver=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::OpAssign1::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssign1::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::OpAssign2
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssign2') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assign')

  klass.define_instance_method('assign=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('op')

  klass.define_instance_method('op=')

  klass.define_instance_method('receiver')

  klass.define_instance_method('receiver=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::OpAssign2::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssign2::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::OpAssignAnd
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssignAnd') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('left')

  klass.define_instance_method('left=')

  klass.define_instance_method('right')

  klass.define_instance_method('right=')

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::OpAssignAnd::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssignAnd::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::OpAssignOr
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssignOr') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::OpAssignAnd'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::OpAssignOr19
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssignOr19') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::OpAssignOr'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::OpAssignOr19::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssignOr19::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::OpAssignOr::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::OpAssignOr::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Or
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Or') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::And'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::Or::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Or::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::PatternArguments
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PatternArguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_method('from_masgn') do |method|
    method.define_argument('node')
  end

  klass.define_instance_method('argument')

  klass.define_instance_method('argument=')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('map_arguments') do |method|
    method.define_argument('scope')
  end
end

##
# Constant: Rubinius::AST::PatternArguments::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PatternArguments::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::PatternVariable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PatternVariable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('position_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::PatternVariable::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PatternVariable::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::PostArg
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PostArg') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('into')

  klass.define_instance_method('into=')

  klass.define_instance_method('rest')

  klass.define_instance_method('rest=')
end

##
# Constant: Rubinius::AST::PostArg::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PostArg::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::PreExe
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PreExe') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('block')

  klass.define_instance_method('block=')

  klass.define_instance_method('pre_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('pre_sexp')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::PreExe19
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PreExe19') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::PreExe'))

  klass.define_method('__class_init__')

  klass.define_instance_method('pre_bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::PreExe19::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PreExe19::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::PreExe::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PreExe::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::PushActualArguments
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PushActualArguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('splat?')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::PushArgs
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PushArgs') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::PushArgs::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::PushArgs::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Range
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Range') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('finish')

  klass.define_instance_method('finish=')

  klass.define_instance_method('start')

  klass.define_instance_method('start=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Range::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Range::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::RangeExclude
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::RangeExclude') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Range'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::RangeExclude::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::RangeExclude::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ReceiverCase
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ReceiverCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Case'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('receiver')

  klass.define_instance_method('receiver=')

  klass.define_instance_method('receiver_sexp')
end

##
# Constant: Rubinius::AST::ReceiverCase::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ReceiverCase::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Redo
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Redo') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Break'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Redo::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Redo::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::RegexLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::RegexLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('options')

  klass.define_instance_method('options=')

  klass.define_instance_method('source')

  klass.define_instance_method('source=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::RegexLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::RegexLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Rescue
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Rescue') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('else')

  klass.define_instance_method('else=')

  klass.define_instance_method('rescue')

  klass.define_instance_method('rescue=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Rescue::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Rescue::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::RescueCondition
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::RescueCondition') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assignment')

  klass.define_instance_method('assignment=')

  klass.define_instance_method('assignment?') do |method|
    method.define_argument('node')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_argument('reraise')
    method.define_argument('done')
    method.define_argument('outer_exc_state')
  end

  klass.define_instance_method('conditions')

  klass.define_instance_method('conditions=')

  klass.define_instance_method('next')

  klass.define_instance_method('next=')

  klass.define_instance_method('splat')

  klass.define_instance_method('splat=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::RescueCondition::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::RescueCondition::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::RescueSplat
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::RescueSplat') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_argument('body')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::RescueSplat::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::RescueSplat::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Retry
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Retry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Break'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Retry::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Retry::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Return
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Return') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_optional_argument('force')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::Return::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Return::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SClass
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SClass') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('receiver')

  klass.define_instance_method('receiver=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::SClass::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SClass::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SClassScope
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SClassScope') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ClosedScope'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::SClassScope::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SClassScope::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SValue
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SValue') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::SValue::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SValue::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ScopedClassName
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ScopedClassName') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ClassName'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ScopedClassName::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ScopedClassName::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ScopedConstant
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ScopedConstant') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assign_bytecode') do |method|
    method.define_argument('g')
    method.define_argument('value')
  end

  klass.define_instance_method('assign_sexp')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('masgn_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
    method.define_optional_argument('const_missing')
  end
end

##
# Constant: Rubinius::AST::ScopedConstant::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ScopedConstant::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ScopedModuleName
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ScopedModuleName') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ModuleName'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ScopedModuleName::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ScopedModuleName::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Script
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Script') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Container'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::Script::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Script::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Self
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Self') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::Self::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Self::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Send
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Send') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments_sexp')

  klass.define_instance_method('block')

  klass.define_instance_method('block=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('check_for_local')

  klass.define_instance_method('check_for_local=')

  klass.define_instance_method('check_local_reference') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('execute_receiver') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('privately')

  klass.define_instance_method('privately=')

  klass.define_instance_method('receiver')

  klass.define_instance_method('receiver=')

  klass.define_instance_method('receiver_sexp')

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end

  klass.define_instance_method('variable')

  klass.define_instance_method('variable=')

  klass.define_instance_method('vcall_style')

  klass.define_instance_method('vcall_style=')
end

##
# Constant: Rubinius::AST::Send::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Send::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SendFastCoerceTo
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendFastCoerceTo') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::SendFastCoerceTo::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendFastCoerceTo::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SendFastNew
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendFastNew') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::SendFastNew::KernelMethodSerial
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendFastNew::KernelMethodSerial') do |klass|
end

##
# Constant: Rubinius::AST::SendFastNew::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendFastNew::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SendKernelMethod
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendKernelMethod') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::SendKernelMethod::Arguments
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendKernelMethod::Arguments') do |klass|
end

##
# Constant: Rubinius::AST::SendKernelMethod::Methods
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendKernelMethod::Methods') do |klass|
end

##
# Constant: Rubinius::AST::SendKernelMethod::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendKernelMethod::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SendPrimitive
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendPrimitive') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::SendPrimitive::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendPrimitive::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SendPrivately
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendPrivately') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Send'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('block=') do |method|
    method.define_argument('iter')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('map_sends')
end

##
# Constant: Rubinius::AST::SendPrivately::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendPrivately::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SendWithArguments
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendWithArguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Send'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arguments')

  klass.define_instance_method('arguments=')

  klass.define_instance_method('arguments_sexp') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end
end

##
# Constant: Rubinius::AST::SendWithArguments::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SendWithArguments::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SingleBlockArg
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SingleBlockArg') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_method('match?') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_argument('privately')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::SingleBlockArg::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SingleBlockArg::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Snippet
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Snippet') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Container'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::Snippet::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Snippet::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SplatArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SplatAssignment'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::SplatArray::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatArray::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SplatAssignment
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::SplatAssignment::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SplatValue
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatValue') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::SplatValue::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatValue::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SplatWhen
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatWhen') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_argument('body')
    method.define_argument('nxt')
  end

  klass.define_instance_method('condition')

  klass.define_instance_method('condition=')

  klass.define_instance_method('receiver_bytecode') do |method|
    method.define_argument('g')
    method.define_argument('body')
    method.define_argument('nxt')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::SplatWhen::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatWhen::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SplatWrapped
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatWrapped') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SplatAssignment'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::SplatWrapped::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SplatWrapped::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::State
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::State') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('flip_flops')

  klass.define_method('flip_flops=')

  klass.define_instance_method('block?')

  klass.define_instance_method('ensure?')

  klass.define_instance_method('eval')

  klass.define_instance_method('eval?')

  klass.define_instance_method('flip_flops')

  klass.define_instance_method('loop?')

  klass.define_instance_method('masgn?')

  klass.define_instance_method('name')

  klass.define_instance_method('op_asgn?')

  klass.define_instance_method('pop_block')

  klass.define_instance_method('pop_ensure')

  klass.define_instance_method('pop_loop')

  klass.define_instance_method('pop_masgn')

  klass.define_instance_method('pop_name')

  klass.define_instance_method('pop_op_asgn')

  klass.define_instance_method('pop_rescue')

  klass.define_instance_method('push_block')

  klass.define_instance_method('push_ensure')

  klass.define_instance_method('push_eval') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('push_flip_flop')

  klass.define_instance_method('push_loop')

  klass.define_instance_method('push_masgn')

  klass.define_instance_method('push_name') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('push_op_asgn')

  klass.define_instance_method('push_rescue') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('push_super') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('rescue?')

  klass.define_instance_method('scope')

  klass.define_instance_method('super')

  klass.define_instance_method('super?')
end

##
# Constant: Rubinius::AST::StringLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::StringLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('string')

  klass.define_instance_method('string=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::StringLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::StringLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Super
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Super') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_instance_method('block')

  klass.define_instance_method('block=')

  klass.define_instance_method('block_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Super::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Super::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::SymbolLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SymbolLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::SymbolLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::SymbolLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ToArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::ToArray::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToArray::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ToString
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToString') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::ToString::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToString::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ToplevelClassName
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToplevelClassName') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ClassName'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ToplevelClassName::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToplevelClassName::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ToplevelConstant
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToplevelConstant') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assign_bytecode') do |method|
    method.define_argument('g')
    method.define_argument('value')
  end

  klass.define_instance_method('assign_sexp')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('masgn_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::ToplevelConstant::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToplevelConstant::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ToplevelModuleName
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToplevelModuleName') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::ModuleName'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ToplevelModuleName::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ToplevelModuleName::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Transforms
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Transforms') do |klass|

  klass.define_method('[]') do |method|
    method.define_argument('name')
  end

  klass.define_method('__module_init__')

  klass.define_method('category') do |method|
    method.define_argument('name')
  end

  klass.define_method('category_map')

  klass.define_method('register') do |method|
    method.define_argument('category')
    method.define_argument('name')
    method.define_argument('klass')
  end

  klass.define_method('transform_map')
end

##
# Constant: Rubinius::AST::TrueLiteral
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::TrueLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::TrueLiteral::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::TrueLiteral::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::TypeConstant
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::TypeConstant') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::AST::TypeConstant::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::TypeConstant::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Undef
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Undef') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Undef::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Undef::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Until
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Until') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::While'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')
end

##
# Constant: Rubinius::AST::Until::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Until::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::VAlias
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::VAlias') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Alias'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::VAlias::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::VAlias::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::VariableAccess
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::VariableAccess') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('value_defined') do |method|
    method.define_argument('g')
    method.define_argument('f')
  end
end

##
# Constant: Rubinius::AST::VariableAccess::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::VariableAccess::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::VariableAssignment
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::VariableAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('to_sexp')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::AST::VariableAssignment::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::VariableAssignment::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::When
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::When') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_argument('done')
  end

  klass.define_instance_method('condition_bytecode') do |method|
    method.define_argument('g')
    method.define_argument('condition')
  end

  klass.define_instance_method('conditions')

  klass.define_instance_method('conditions=')

  klass.define_instance_method('receiver_bytecode') do |method|
    method.define_argument('g')
    method.define_argument('done')
  end

  klass.define_instance_method('single')

  klass.define_instance_method('single=')

  klass.define_instance_method('splat')

  klass.define_instance_method('splat=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::When::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::When::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::While
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::While') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('body')

  klass.define_instance_method('body=')

  klass.define_instance_method('body_bytecode') do |method|
    method.define_argument('g')
    method.define_argument('lbl')
  end

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
    method.define_optional_argument('use_gif')
  end

  klass.define_instance_method('check_first')

  klass.define_instance_method('check_first=')

  klass.define_instance_method('condition')

  klass.define_instance_method('condition=')

  klass.define_instance_method('condition_bytecode') do |method|
    method.define_argument('g')
    method.define_argument('bottom')
    method.define_argument('use_gif')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('sexp_name')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::While::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::While::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::Yield
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Yield') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::SendWithArguments'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('defined') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('execute') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('flags')

  klass.define_instance_method('flags=')

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::Yield::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::Yield::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AST::ZSuper
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ZSuper') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::AST::Super'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('to_sexp')
end

##
# Constant: Rubinius::AST::ZSuper::TransformState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AST::ZSuper::TransformState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialized')

  klass.define_instance_method('modified?')

  klass.define_instance_method('modify')

  klass.define_instance_method('unmodify')
end

##
# Constant: Rubinius::AccessVariable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AccessVariable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Executable'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_method('get_ivar') do |method|
    method.define_argument('name')
  end

  klass.define_method('set_ivar') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('variable')
    method.define_argument('write')
  end

  klass.define_instance_method('name')
end

##
# Constant: Rubinius::AgentRegistry
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AgentRegistry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('get') do |method|
    method.define_argument('var')
    method.define_block_argument('blk')
  end

  klass.define_method('primary')

  klass.define_method('set') do |method|
    method.define_argument('var')
    method.define_block_argument('blk')
  end

  klass.define_instance_method('get') do |method|
    method.define_argument('var')
    method.define_block_argument('blk')
  end

  klass.define_instance_method('initialize')

  klass.define_instance_method('run_get') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('run_set') do |method|
    method.define_argument('var')
    method.define_argument('val')
  end

  klass.define_instance_method('set') do |method|
    method.define_argument('var')
    method.define_block_argument('blk')
  end
end

##
# Constant: Rubinius::Alias
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Alias') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Executable'))

  klass.define_method('__class_init__')

  klass.define_instance_method('original_exec')

  klass.define_instance_method('original_module')

  klass.define_instance_method('original_name')
end

##
# Constant: Rubinius::AssertionError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AssertionError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::VMException'))
end

##
# Constant: Rubinius::AtExit
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AtExit') do |klass|
end

##
# Constant: Rubinius::AtomicReference
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::AtomicReference') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('compare_and_set') do |method|
    method.define_argument('old')
    method.define_argument('new')
  end

  klass.define_instance_method('get')

  klass.define_instance_method('get_and_set') do |method|
    method.define_argument('new')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('val')
  end

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('set') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('value')

  klass.define_instance_method('value=') do |method|
    method.define_argument('val')
  end
end

##
# Constant: Rubinius::BIN_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::BIN_PATH') do |klass|
end

##
# Constant: Rubinius::BUILD_CONFIG
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::BUILD_CONFIG') do |klass|
end

##
# Constant: Rubinius::BUILD_REV
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::BUILD_REV') do |klass|
end

##
# Constant: Rubinius::Backtrace
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Backtrace') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('backtrace') do |method|
    method.define_argument('locations')
  end

  klass.define_method('detect_backtrace') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('color_from_loc') do |method|
    method.define_argument('loc')
    method.define_argument('first')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('eval_color')

  klass.define_instance_method('eval_color=')

  klass.define_instance_method('first_color')

  klass.define_instance_method('first_color=')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('locations')
    method.define_optional_argument('width')
    method.define_optional_argument('min_width')
  end

  klass.define_instance_method('join') do |method|
    method.define_argument('sep')
  end

  klass.define_instance_method('kernel_color')

  klass.define_instance_method('kernel_color=')

  klass.define_instance_method('same_mri_backtrace?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('show') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('show_color')
  end

  klass.define_instance_method('to_mri')

  klass.define_instance_method('to_s') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('show_color')
  end
end

##
# Constant: Rubinius::Backtrace::MAX_WIDTH_PERCENTAGE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Backtrace::MAX_WIDTH_PERCENTAGE') do |klass|
end

##
# Constant: Rubinius::Backtrace::MIN_WIDTH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Backtrace::MIN_WIDTH') do |klass|
end

##
# Constant: Rubinius::Backtrace::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Backtrace::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::BlockEnvironment
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::BlockEnvironment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_method('of_sender')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('call') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('call_on_instance') do |method|
    method.define_argument('obj')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('call_under') do |method|
    method.define_argument('recv')
    method.define_argument('constant_scope')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('change_name') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('compiled_code')

  klass.define_instance_method('constant_scope')

  klass.define_instance_method('disable_scope!')

  klass.define_instance_method('file')

  klass.define_instance_method('from_eval!')

  klass.define_instance_method('from_eval?')

  klass.define_instance_method('from_proc?')

  klass.define_instance_method('line')

  klass.define_instance_method('make_independent')

  klass.define_instance_method('metadata_container')

  klass.define_instance_method('module')

  klass.define_instance_method('parameters')

  klass.define_instance_method('proc_environment')

  klass.define_instance_method('proc_environment=')

  klass.define_instance_method('repoint_scope') do |method|
    method.define_argument('where')
  end

  klass.define_instance_method('scope')

  klass.define_instance_method('set_eval_binding') do |method|
    method.define_argument('bind')
  end

  klass.define_instance_method('source_location')

  klass.define_instance_method('to_binding')

  klass.define_instance_method('top_scope')

  klass.define_instance_method('under_context') do |method|
    method.define_argument('scope')
    method.define_argument('code')
  end
end

##
# Constant: Rubinius::BlockEnvironment::AsMethod
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::BlockEnvironment::AsMethod') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Executable'))

  klass.define_method('__class_init__')

  klass.define_method('new') do |method|
    method.define_argument('block_env')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('block_env')

  klass.define_instance_method('block_index')

  klass.define_instance_method('defined_line')

  klass.define_instance_method('file')

  klass.define_instance_method('local_names')

  klass.define_instance_method('parameters')

  klass.define_instance_method('post_args')

  klass.define_instance_method('required_args')

  klass.define_instance_method('splat')

  klass.define_instance_method('total_args')
end

##
# Constant: Rubinius::ByteArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::ByteArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_method('allocate_sized') do |method|
    method.define_argument('cnt')
  end

  klass.define_method('new') do |method|
    method.define_argument('cnt')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('index')
    method.define_argument('value')
  end

  klass.define_instance_method('character_at_index') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('compare_bytes') do |method|
    method.define_argument('other')
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_instance_method('dup') do |method|
    method.define_optional_argument('cls')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('fetch_bytes') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_instance_method('first_capitalize!')

  klass.define_instance_method('get_byte') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('locate') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
    method.define_argument('max')
  end

  klass.define_instance_method('move_bytes') do |method|
    method.define_argument('start')
    method.define_argument('count')
    method.define_argument('dest')
  end

  klass.define_instance_method('prepend') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('reverse') do |method|
    method.define_argument('start')
    method.define_argument('total')
  end

  klass.define_instance_method('set_byte') do |method|
    method.define_argument('index')
    method.define_argument('value')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('utf8_char') do |method|
    method.define_argument('offset')
  end
end

##
# Constant: Rubinius::CAPI
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CAPI') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('coerce') do |method|
    method.define_argument('x')
    method.define_argument('y')
    method.define_optional_argument('error')
  end

  klass.define_method('rb_num_coerce_bin') do |method|
    method.define_argument('x')
    method.define_argument('y')
    method.define_argument('op')
  end

  klass.define_method('rb_num_coerce_cmp') do |method|
    method.define_argument('x')
    method.define_argument('y')
    method.define_argument('op')
  end

  klass.define_method('rb_num_coerce_relop') do |method|
    method.define_argument('x')
    method.define_argument('y')
    method.define_argument('op')
  end

  klass.define_method('rb_str_conv_enc_opts') do |method|
    method.define_argument('str')
    method.define_argument('from')
    method.define_argument('to')
    method.define_argument('flags')
    method.define_argument('opts')
  end

  klass.define_method('rb_str_encode') do |method|
    method.define_argument('str')
    method.define_argument('enc')
    method.define_argument('flags')
    method.define_argument('opts')
  end

  klass.define_method('sprintf') do |method|
    method.define_argument('format')
    method.define_argument('args')
  end
end

##
# Constant: Rubinius::COMPILER_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::COMPILER_PATH') do |klass|
end

##
# Constant: Rubinius::CPU
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CPU') do |klass|
end

##
# Constant: Rubinius::CType
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CType') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('isalnum') do |method|
    method.define_argument('num')
  end

  klass.define_method('isctrl') do |method|
    method.define_argument('num')
  end

  klass.define_method('isdigit') do |method|
    method.define_argument('num')
  end

  klass.define_method('islower') do |method|
    method.define_argument('num')
  end

  klass.define_method('isspace') do |method|
    method.define_argument('num')
  end

  klass.define_method('isupper') do |method|
    method.define_argument('num')
  end

  klass.define_method('tolower') do |method|
    method.define_argument('num')
  end

  klass.define_method('tolower!') do |method|
    method.define_argument('num')
  end

  klass.define_method('toprint') do |method|
    method.define_argument('num')
  end

  klass.define_method('toupper') do |method|
    method.define_argument('num')
  end

  klass.define_method('toupper!') do |method|
    method.define_argument('num')
  end

  klass.define_method('unprintable_chr') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('toprint')
end

##
# Constant: Rubinius::CType::Lowered
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CType::Lowered') do |klass|
end

##
# Constant: Rubinius::CType::Printed
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CType::Printed') do |klass|
end

##
# Constant: Rubinius::CallUnit
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CallUnit') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('constant_value') do |method|
    method.define_argument('obj')
  end

  klass.define_method('for_method') do |method|
    method.define_argument('mo')
  end

  klass.define_method('for_method_parts') do |method|
    method.define_argument('mod')
    method.define_argument('exec')
    method.define_argument('name')
  end

  klass.define_method('test') do |method|
    method.define_argument('cond')
    method.define_argument('c_then')
    method.define_argument('c_else')
  end

  klass.define_method('test_kind_of') do |method|
    method.define_argument('mod')
    method.define_argument('which')
  end
end

##
# Constant: Rubinius::CallUnitAdapter
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CallUnitAdapter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('new') do |method|
    method.define_argument('unit')
  end
end

##
# Constant: Rubinius::Channel
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Channel') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_method('new')

  klass.define_instance_method('<<') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('receive')

  klass.define_instance_method('receive_timeout') do |method|
    method.define_argument('duration')
  end

  klass.define_instance_method('send') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('try_receive')

  klass.define_instance_method('value')

  klass.define_instance_method('waiting')
end

##
# Constant: Rubinius::Character
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Character') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('String'))

  klass.define_method('__allocate__')

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('alphabetical?')

  klass.define_instance_method('ascii?')

  klass.define_instance_method('digit?')

  klass.define_instance_method('lower?')

  klass.define_instance_method('printable?')

  klass.define_instance_method('punctuation?')

  klass.define_instance_method('space?')

  klass.define_instance_method('upper?')
end

##
# Constant: Rubinius::Character::Complexifier
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Character::Complexifier') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('convert')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('value')
  end
end

##
# Constant: Rubinius::Character::ControlCharacters
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Character::ControlCharacters') do |klass|
end

##
# Constant: Rubinius::Character::ControlPrintValue
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Character::ControlPrintValue') do |klass|
end

##
# Constant: Rubinius::Character::Rationalizer
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Character::Rationalizer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('convert')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('value')
  end
end

##
# Constant: Rubinius::CodeLoader
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CodeLoader') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('check_version')

  klass.define_method('check_version=')

  klass.define_method('compiled_hook')

  klass.define_method('execute_script') do |method|
    method.define_argument('script')
  end

  klass.define_method('feature_provided?') do |method|
    method.define_argument('name')
  end

  klass.define_method('load_compiled')

  klass.define_method('load_compiled=')

  klass.define_method('load_compiled_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('check_version')
  end

  klass.define_method('load_compiler')

  klass.define_method('load_map')

  klass.define_method('load_script') do |method|
    method.define_argument('name')
    method.define_optional_argument('debug')
  end

  klass.define_method('loaded?') do |method|
    method.define_argument('feature')
  end

  klass.define_method('loaded_hook')

  klass.define_method('require') do |method|
    method.define_argument('name')
  end

  klass.define_method('require_compiled') do |method|
    method.define_argument('name')
    method.define_optional_argument('check_version')
  end

  klass.define_method('require_relative') do |method|
    method.define_argument('name')
    method.define_argument('scope')
  end

  klass.define_method('save_compiled?')

  klass.define_method('source_extension')

  klass.define_method('source_extension=')

  klass.define_instance_method('add_feature')

  klass.define_instance_method('check_file') do |method|
    method.define_argument('name')
    method.define_argument('extension')
    method.define_argument('type')
  end

  klass.define_instance_method('check_path') do |method|
    method.define_argument('directory')
    method.define_argument('name')
    method.define_argument('extension')
    method.define_argument('type')
  end

  klass.define_instance_method('compile_file') do |method|
    method.define_argument('file')
    method.define_argument('compiled')
  end

  klass.define_instance_method('compiled_code')

  klass.define_instance_method('feature')

  klass.define_instance_method('home_path?') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('load') do |method|
    method.define_optional_argument('wrap')
  end

  klass.define_instance_method('load_compiled_file') do |method|
    method.define_argument('path')
    method.define_argument('signature')
    method.define_argument('version')
  end

  klass.define_instance_method('load_error') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('load_file') do |method|
    method.define_optional_argument('wrap')
  end

  klass.define_instance_method('load_library')

  klass.define_instance_method('load_script') do |method|
    method.define_argument('debug')
  end

  klass.define_instance_method('loadable?') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('path')

  klass.define_instance_method('qualified_path?') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('require')

  klass.define_instance_method('require_compiled') do |method|
    method.define_optional_argument('check_version')
  end

  klass.define_instance_method('resolve_load_path')

  klass.define_instance_method('resolve_require_path')

  klass.define_instance_method('search_load_path') do |method|
    method.define_argument('name')
    method.define_argument('loading')
  end

  klass.define_instance_method('search_require_path') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('update_paths') do |method|
    method.define_argument('file')
    method.define_argument('path')
  end

  klass.define_instance_method('verify_load_path') do |method|
    method.define_argument('file')
    method.define_optional_argument('loading')
  end

  klass.define_instance_method('verify_require_path') do |method|
    method.define_argument('name')
  end
end

##
# Constant: Rubinius::CodeLoader::Lock
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CodeLoader::Lock') do |klass|
end

##
# Constant: Rubinius::CodeLoader::RequireRequest
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CodeLoader::RequireRequest') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('current_thread?')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('type')
    method.define_argument('map')
    method.define_argument('key')
  end

  klass.define_instance_method('lock')

  klass.define_instance_method('passed!')

  klass.define_instance_method('remove!')

  klass.define_instance_method('take!')

  klass.define_instance_method('type')

  klass.define_instance_method('unlock')

  klass.define_instance_method('wait')
end

##
# Constant: Rubinius::CompactLookupTable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompactLookupTable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Tuple'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('val')
  end

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('values')
end

##
# Constant: Rubinius::CompactLookupTable::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompactLookupTable::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::CompileError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompileError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('RuntimeError'))
end

##
# Constant: Rubinius::CompiledCode
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledCode') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Executable'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_method('current')

  klass.define_method('locate') do |method|
    method.define_argument('file')
    method.define_optional_argument('line')
  end

  klass.define_method('of_sender')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('active_path')

  klass.define_instance_method('add_metadata') do |method|
    method.define_argument('key')
    method.define_argument('val')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('block_index')

  klass.define_instance_method('block_index=') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('breakpoint?') do |method|
    method.define_argument('ip')
  end

  klass.define_instance_method('change_name') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('child_methods')

  klass.define_instance_method('clear_breakpoint') do |method|
    method.define_argument('ip')
  end

  klass.define_instance_method('create_script') do |method|
    method.define_optional_argument('wrap')
  end

  klass.define_instance_method('decode') do |method|
    method.define_optional_argument('bytecodes')
  end

  klass.define_instance_method('defined_line')

  klass.define_instance_method('describe')

  klass.define_instance_method('dup')

  klass.define_instance_method('equivalent_body?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('eval_source')

  klass.define_instance_method('file')

  klass.define_instance_method('file=')

  klass.define_instance_method('first_ip_on_line') do |method|
    method.define_argument('line')
    method.define_optional_argument('start')
  end

  klass.define_instance_method('first_line')

  klass.define_instance_method('for_eval?')

  klass.define_instance_method('for_module_body?')

  klass.define_instance_method('get_metadata') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('hints')

  klass.define_instance_method('hints=')

  klass.define_instance_method('inherit_scope') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('is_block?')

  klass.define_instance_method('iseq')

  klass.define_instance_method('iseq=')

  klass.define_instance_method('line_from_ip') do |method|
    method.define_argument('ip')
  end

  klass.define_instance_method('lines')

  klass.define_instance_method('lines=')

  klass.define_instance_method('literals')

  klass.define_instance_method('literals=')

  klass.define_instance_method('local_count')

  klass.define_instance_method('local_count=')

  klass.define_instance_method('local_names')

  klass.define_instance_method('local_names=')

  klass.define_instance_method('local_slot') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('locate_line') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('metadata')

  klass.define_instance_method('metadata=')

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('parameters')

  klass.define_instance_method('post_args')

  klass.define_instance_method('post_args=')

  klass.define_instance_method('required_args')

  klass.define_instance_method('required_args=')

  klass.define_instance_method('scope')

  klass.define_instance_method('scope=')

  klass.define_instance_method('set_breakpoint') do |method|
    method.define_argument('ip')
    method.define_argument('obj')
  end

  klass.define_instance_method('splat')

  klass.define_instance_method('splat=')

  klass.define_instance_method('stack_size')

  klass.define_instance_method('stack_size=')

  klass.define_instance_method('total_args')

  klass.define_instance_method('total_args=')
end

##
# Constant: Rubinius::CompiledCode::Instruction
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledCode::Instruction') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('args')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('inst')
    method.define_argument('code')
    method.define_argument('ip')
  end

  klass.define_instance_method('instruction')

  klass.define_instance_method('ip')

  klass.define_instance_method('line')

  klass.define_instance_method('opcode')

  klass.define_instance_method('size')

  klass.define_instance_method('to_s')
end

##
# Constant: Rubinius::CompiledCode::Instruction::Association
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledCode::Instruction::Association') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('inspect')
end

##
# Constant: Rubinius::CompiledCode::Instruction::Location
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledCode::Instruction::Location') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('location')
  end

  klass.define_instance_method('inspect')
end

##
# Constant: Rubinius::CompiledCode::Instruction::Location::FORMAT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledCode::Instruction::Location::FORMAT') do |klass|
end

##
# Constant: Rubinius::CompiledCode::KernelMethodSerial
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledCode::KernelMethodSerial') do |klass|
end

##
# Constant: Rubinius::CompiledCode::Script
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledCode::Script') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('compiled_code')

  klass.define_instance_method('compiled_code=')

  klass.define_instance_method('data_path')

  klass.define_instance_method('data_path=')

  klass.define_instance_method('eval?')

  klass.define_instance_method('eval_binding')

  klass.define_instance_method('eval_binding=')

  klass.define_instance_method('eval_source')

  klass.define_instance_method('eval_source=')

  klass.define_instance_method('file_path')

  klass.define_instance_method('file_path=')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('method')
    method.define_optional_argument('path')
    method.define_optional_argument('for_eval')
  end

  klass.define_instance_method('main?')

  klass.define_instance_method('make_main!')
end

##
# Constant: Rubinius::CompiledFile
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledFile') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('dump') do |method|
    method.define_argument('code')
    method.define_argument('file')
    method.define_argument('signature')
    method.define_argument('version')
  end

  klass.define_method('load') do |method|
    method.define_argument('stream')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('encode_to') do |method|
    method.define_argument('stream')
    method.define_argument('body')
  end

  klass.define_instance_method('magic')

  klass.define_instance_method('signature')

  klass.define_instance_method('stream')

  klass.define_instance_method('version')
end

##
# Constant: Rubinius::CompiledFile::Marshal
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::CompiledFile::Marshal') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('marshal') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('unmarshal') do |method|
    method.define_argument('stream')
  end
end

##
# Constant: Rubinius::Compiler
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('compile') do |method|
    method.define_argument('file')
    method.define_optional_argument('output')
    method.define_optional_argument('line')
    method.define_optional_argument('transforms')
  end

  klass.define_method('compile_eval') do |method|
    method.define_argument('string')
    method.define_argument('variable_scope')
    method.define_optional_argument('file')
    method.define_optional_argument('line')
  end

  klass.define_method('compile_file') do |method|
    method.define_argument('file')
    method.define_optional_argument('line')
  end

  klass.define_method('compile_file_old') do |method|
    method.define_argument('file')
    method.define_optional_argument('flags')
  end

  klass.define_method('compile_string') do |method|
    method.define_argument('string')
    method.define_optional_argument('file')
    method.define_optional_argument('line')
  end

  klass.define_method('compile_test_bytecode') do |method|
    method.define_argument('string')
    method.define_argument('transforms')
  end

  klass.define_method('compile_test_bytecode_19') do |method|
    method.define_argument('string')
    method.define_argument('transforms')
  end

  klass.define_method('compiled_cache_writable?') do |method|
    method.define_argument('db')
    method.define_argument('dir')
  end

  klass.define_method('compiled_name') do |method|
    method.define_argument('file')
  end

  klass.define_method('compiler_error') do |method|
    method.define_argument('msg')
    method.define_argument('orig')
  end

  klass.define_method('construct_block') do |method|
    method.define_argument('string')
    method.define_argument('binding')
    method.define_optional_argument('file')
    method.define_optional_argument('line')
  end

  klass.define_method('eval_cache')

  klass.define_instance_method('encoder')

  klass.define_instance_method('encoder=')

  klass.define_instance_method('generator')

  klass.define_instance_method('generator=')

  klass.define_instance_method('packager')

  klass.define_instance_method('packager=')

  klass.define_instance_method('parser')

  klass.define_instance_method('parser=')

  klass.define_instance_method('run')

  klass.define_instance_method('writer')

  klass.define_instance_method('writer=')
end

##
# Constant: Rubinius::Compiler::ASTPrinter
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::ASTPrinter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Printer'))

  klass.define_method('__class_init__')

  klass.define_instance_method('run')
end

##
# Constant: Rubinius::Compiler::Encoder
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Encoder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Stage'))

  klass.define_method('__class_init__')

  klass.define_instance_method('run')
end

##
# Constant: Rubinius::Compiler::EvalLocalReference
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::EvalLocalReference') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('depth')

  klass.define_instance_method('depth=')

  klass.define_instance_method('get_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('set_bytecode') do |method|
    method.define_argument('g')
  end
end

##
# Constant: Rubinius::Compiler::EvalLocalVariable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::EvalLocalVariable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('name')

  klass.define_instance_method('nested_reference')

  klass.define_instance_method('reference')
end

##
# Constant: Rubinius::Compiler::EvalParser
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::EvalParser') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::StringParser'))

  klass.define_method('__class_init__')

  klass.define_instance_method('should_cache?')
end

##
# Constant: Rubinius::Compiler::FileParser
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::FileParser') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Parser'))

  klass.define_method('__class_init__')

  klass.define_instance_method('input') do |method|
    method.define_argument('file')
    method.define_optional_argument('line')
  end

  klass.define_instance_method('parse')
end

##
# Constant: Rubinius::Compiler::Generator
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Generator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Stage'))

  klass.define_method('__class_init__')

  klass.define_instance_method('run')

  klass.define_instance_method('variable_scope')

  klass.define_instance_method('variable_scope=')
end

##
# Constant: Rubinius::Compiler::LRUCache
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::LRUCache') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('clear!')

  klass.define_instance_method('current')

  klass.define_instance_method('explain')

  klass.define_instance_method('misses')

  klass.define_instance_method('retrieve') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('set') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end
end

##
# Constant: Rubinius::Compiler::LRUCache::Entry
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::LRUCache::Entry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('become_first!')

  klass.define_instance_method('detach!')

  klass.define_instance_method('hits')

  klass.define_instance_method('inc!')

  klass.define_instance_method('insert_after') do |method|
    method.define_argument('entry')
  end

  klass.define_instance_method('insert_before') do |method|
    method.define_argument('entry')
  end

  klass.define_instance_method('key')

  klass.define_instance_method('next_entry')

  klass.define_instance_method('next_entry=')

  klass.define_instance_method('prev_entry')

  klass.define_instance_method('prev_entry=')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::Compiler::LocalReference
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::LocalReference') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('get_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('set_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('slot')
end

##
# Constant: Rubinius::Compiler::LocalVariable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::LocalVariable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('nested_reference')

  klass.define_instance_method('reference')

  klass.define_instance_method('slot')
end

##
# Constant: Rubinius::Compiler::LocalVariables
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::LocalVariables') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('allocate_slot')

  klass.define_instance_method('local_count')

  klass.define_instance_method('local_names')

  klass.define_instance_method('variables')
end

##
# Constant: Rubinius::Compiler::MethodPrinter
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::MethodPrinter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Printer'))

  klass.define_method('__class_init__')

  klass.define_instance_method('assembly')

  klass.define_instance_method('assembly=')

  klass.define_instance_method('bytecode')

  klass.define_instance_method('bytecode=')

  klass.define_instance_method('match?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('method_names=') do |method|
    method.define_argument('names')
  end

  klass.define_instance_method('print_footer')

  klass.define_instance_method('print_header') do |method|
    method.define_argument('code')
  end

  klass.define_instance_method('print_lines') do |method|
    method.define_argument('code')
  end

  klass.define_instance_method('print_method') do |method|
    method.define_argument('code')
  end

  klass.define_instance_method('run')
end

##
# Constant: Rubinius::Compiler::MethodPrinter::SEPARATOR_SIZE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::MethodPrinter::SEPARATOR_SIZE') do |klass|
end

##
# Constant: Rubinius::Compiler::NestedLocalReference
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::NestedLocalReference') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('depth')

  klass.define_instance_method('depth=')

  klass.define_instance_method('get_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('set_bytecode') do |method|
    method.define_argument('g')
  end

  klass.define_instance_method('slot')
end

##
# Constant: Rubinius::Compiler::NestedLocalVariable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::NestedLocalVariable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('depth')

  klass.define_instance_method('nested_reference')

  klass.define_instance_method('reference')

  klass.define_instance_method('slot')
end

##
# Constant: Rubinius::Compiler::Packager
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Packager') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Stage'))

  klass.define_method('__class_init__')

  klass.define_instance_method('print') do |method|
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('run')
end

##
# Constant: Rubinius::Compiler::Parser
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Parser') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Stage'))

  klass.define_method('__class_init__')

  klass.define_instance_method('add_magic_comment') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('create')

  klass.define_instance_method('default_transforms')

  klass.define_instance_method('enable_category') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('enable_transform') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('print') do |method|
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('root') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('run')

  klass.define_instance_method('transforms')

  klass.define_instance_method('transforms=')
end

##
# Constant: Rubinius::Compiler::Printer
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Printer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Stage'))

  klass.define_method('__class_init__')
end

##
# Constant: Rubinius::Compiler::Runtime
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Runtime') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('find_constant_for_op_asign_or') do |method|
    method.define_argument('name')
    method.define_argument('scope')
  end

  klass.define_method('get_encoding') do |method|
    method.define_argument('name')
  end

  klass.define_method('get_flip_flop') do |method|
    method.define_argument('scope')
    method.define_argument('index')
  end

  klass.define_method('matches_when') do |method|
    method.define_argument('array')
    method.define_argument('receiver')
  end

  klass.define_method('pre_exe')

  klass.define_method('rbx_marshal_constant')

  klass.define_method('set_flip_flop') do |method|
    method.define_argument('scope')
    method.define_argument('index')
    method.define_argument('value')
  end

  klass.define_method('unwrap_block_arg') do |method|
    method.define_argument('arg')
  end
end

##
# Constant: Rubinius::Compiler::SexpPrinter
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::SexpPrinter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Printer'))

  klass.define_method('__class_init__')

  klass.define_instance_method('run')
end

##
# Constant: Rubinius::Compiler::Stage
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Stage') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('next_stage') do |method|
    method.define_argument('klass')
  end

  klass.define_method('next_stage_class')

  klass.define_method('stage') do |method|
    method.define_argument('name')
  end

  klass.define_method('stage_name')

  klass.define_instance_method('create_next_stage') do |method|
    method.define_argument('compiler')
    method.define_argument('last')
  end

  klass.define_instance_method('input') do |method|
    method.define_argument('data')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('stage')
  end

  klass.define_instance_method('next_stage')

  klass.define_instance_method('next_stage=')

  klass.define_instance_method('printer')

  klass.define_instance_method('printer=')

  klass.define_instance_method('processor') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('run_next')
end

##
# Constant: Rubinius::Compiler::Stages
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Stages') do |klass|
end

##
# Constant: Rubinius::Compiler::StringParser
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::StringParser') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Parser'))

  klass.define_method('__class_init__')

  klass.define_instance_method('input') do |method|
    method.define_argument('string')
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_instance_method('parse')
end

##
# Constant: Rubinius::Compiler::Writer
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Compiler::Writer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Compiler::Stage'))

  klass.define_method('__class_init__')

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('run')

  klass.define_instance_method('version')

  klass.define_instance_method('version=')
end

##
# Constant: Rubinius::Config
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Config') do |klass|
end

##
# Constant: Rubinius::Configuration
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Configuration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('get') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('get_section') do |method|
    method.define_argument('section')
  end

  klass.define_instance_method('get_variable') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('section') do |method|
    method.define_argument('section')
  end
end

##
# Constant: Rubinius::ConstantScope
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::ConstantScope') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('of_sender')

  klass.define_instance_method('__undef_method__') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('absolute_active_path')

  klass.define_instance_method('active_path')

  klass.define_instance_method('alias_method') do |method|
    method.define_argument('name')
    method.define_argument('original')
  end

  klass.define_instance_method('class_variable_defined?') do |method|
    method.define_argument('sym')
  end

  klass.define_instance_method('class_variable_get') do |method|
    method.define_argument('sym')
  end

  klass.define_instance_method('class_variable_get_or_set') do |method|
    method.define_argument('sym')
    method.define_argument('val')
  end

  klass.define_instance_method('class_variable_set') do |method|
    method.define_argument('sym')
    method.define_argument('val')
  end

  klass.define_instance_method('const_defined?') do |method|
    method.define_argument('name')
    method.define_optional_argument('search_parents')
  end

  klass.define_instance_method('const_set') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('current_module')

  klass.define_instance_method('current_module=')

  klass.define_instance_method('current_script')

  klass.define_instance_method('data_path')

  klass.define_instance_method('disabled_for_methods')

  klass.define_instance_method('disabled_for_methods=')

  klass.define_instance_method('flip_flops')

  klass.define_instance_method('flip_flops=')

  klass.define_instance_method('for_method_definition')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('mod')
    method.define_optional_argument('par')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('module')

  klass.define_instance_method('parent')

  klass.define_instance_method('script')

  klass.define_instance_method('script=')

  klass.define_instance_method('to_s')

  klass.define_instance_method('top_level?')

  klass.define_instance_method('using_current_as') do |method|
    method.define_argument('mod')
  end

  klass.define_instance_method('using_disabled_scope')
end

##
# Constant: Rubinius::DelegatedMethod
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::DelegatedMethod') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Executable'))

  klass.define_method('__class_init__')

  klass.define_instance_method('activate') do |method|
    method.define_argument('called_object')
    method.define_argument('called_method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('call') do |method|
    method.define_argument('called_object')
    method.define_argument('called_method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('name')
    method.define_argument('method')
    method.define_argument('receiver')
    method.define_optional_argument('pass_self')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('receiver')

  klass.define_instance_method('source_location')
end

##
# Constant: Rubinius::ENDIAN
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::ENDIAN') do |klass|
end

##
# Constant: Rubinius::EnvironmentAccess
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::EnvironmentAccess') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('environ')

  klass.define_method('getenv')

  klass.define_method('putenv')

  klass.define_method('setenv')

  klass.define_method('unsetenv')
end

##
# Constant: Rubinius::EnvironmentVariables
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::EnvironmentVariables') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('assoc') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('delete_if') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('each_key')

  klass.define_instance_method('each_pair')

  klass.define_instance_method('each_value')

  klass.define_instance_method('empty?')

  klass.define_instance_method('fetch') do |method|
    method.define_argument('key')
    method.define_optional_argument('absent')
  end

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('has_value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('index') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('invert')

  klass.define_instance_method('keep_if') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('key') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('length')

  klass.define_instance_method('member?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('rassoc') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('rehash')

  klass.define_instance_method('reject') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject!')

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('select') do |method|
    method.define_block_argument('blk')
  end

  klass.define_instance_method('select!') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('shift')

  klass.define_instance_method('size')

  klass.define_instance_method('store') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_h')

  klass.define_instance_method('to_hash')

  klass.define_instance_method('to_s')

  klass.define_instance_method('update') do |method|
    method.define_argument('other')
    method.define_block_argument('block')
  end

  klass.define_instance_method('value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('params')
  end
end

##
# Constant: Rubinius::EnvironmentVariables::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::EnvironmentVariables::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::Executable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Executable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('invoke') do |method|
    method.define_argument('name')
    method.define_argument('mod')
    method.define_argument('recv')
    method.define_argument('args')
    method.define_argument('block')
  end

  klass.define_instance_method('primitive')

  klass.define_instance_method('primitive=')

  klass.define_instance_method('private?')

  klass.define_instance_method('protected?')

  klass.define_instance_method('public?')

  klass.define_instance_method('serial')

  klass.define_instance_method('serial=')
end

##
# Constant: Rubinius::FFI
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('add_typedef') do |method|
    method.define_argument('current')
    method.define_argument('add')
  end

  klass.define_method('config') do |method|
    method.define_argument('name')
  end

  klass.define_method('config_hash') do |method|
    method.define_argument('name')
  end

  klass.define_method('errno')

  klass.define_method('find_type') do |method|
    method.define_argument('name')
  end

  klass.define_method('generate_function') do |method|
    method.define_argument('ptr')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('generate_trampoline') do |method|
    method.define_argument('obj')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('size_to_type') do |method|
    method.define_argument('size')
  end

  klass.define_method('type_size') do |method|
    method.define_argument('type')
  end
end

##
# Constant: Rubinius::FFI::DynamicLibrary
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('find_symbol')

  klass.define_method('last_error')

  klass.define_method('open') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('open_library')

  klass.define_instance_method('find_function') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('find_symbol') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('find_variable') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('name')
    method.define_optional_argument('flags')
  end

  klass.define_instance_method('last_error')

  klass.define_instance_method('name')
end

##
# Constant: Rubinius::FFI::DynamicLibrary::CURRENT_PROCESS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary::CURRENT_PROCESS') do |klass|
end

##
# Constant: Rubinius::FFI::DynamicLibrary::RTLD_GLOBAL
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary::RTLD_GLOBAL') do |klass|
end

##
# Constant: Rubinius::FFI::DynamicLibrary::Symbol
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary::Symbol') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Pointer'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('library')
    method.define_argument('ptr')
    method.define_argument('name')
  end

  klass.define_instance_method('inspect')
end

##
# Constant: Rubinius::FFI::DynamicLibrary::Symbol::CURRENT_PROCESS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary::Symbol::CURRENT_PROCESS') do |klass|
end

##
# Constant: Rubinius::FFI::DynamicLibrary::Symbol::DLERROR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary::Symbol::DLERROR') do |klass|
end

##
# Constant: Rubinius::FFI::DynamicLibrary::Symbol::DLOPEN
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary::Symbol::DLOPEN') do |klass|
end

##
# Constant: Rubinius::FFI::DynamicLibrary::Symbol::DLSYM
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary::Symbol::DLSYM') do |klass|
end

##
# Constant: Rubinius::FFI::DynamicLibrary::Symbol::NULL
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::DynamicLibrary::Symbol::NULL') do |klass|
end

##
# Constant: Rubinius::FFI::Enum
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Enum') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('sym')
  end

  klass.define_instance_method('anonym?')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('info')
    method.define_optional_argument('tag')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('kv_map')

  klass.define_instance_method('symbol') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('symbols')

  klass.define_instance_method('tag')

  klass.define_instance_method('values')
end

##
# Constant: Rubinius::FFI::Function
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Function') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Pointer'))

  klass.define_method('__class_init__')

  klass.define_instance_method('attach') do |method|
    method.define_argument('mod')
    method.define_argument('name')
  end

  klass.define_instance_method('function')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('ret_type')
    method.define_argument('arg_types')
    method.define_optional_argument('val')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end
end

##
# Constant: Rubinius::FFI::Function::CURRENT_PROCESS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Function::CURRENT_PROCESS') do |klass|
end

##
# Constant: Rubinius::FFI::Function::DLERROR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Function::DLERROR') do |klass|
end

##
# Constant: Rubinius::FFI::Function::DLOPEN
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Function::DLOPEN') do |klass|
end

##
# Constant: Rubinius::FFI::Function::DLSYM
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Function::DLSYM') do |klass|
end

##
# Constant: Rubinius::FFI::Function::NULL
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Function::NULL') do |klass|
end

##
# Constant: Rubinius::FFI::LIB_SUFFIXES
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::LIB_SUFFIXES') do |klass|
end

##
# Constant: Rubinius::FFI::Library
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Library') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('attach_function') do |method|
    method.define_argument('name')
    method.define_argument('a3')
    method.define_argument('a4')
    method.define_optional_argument('a5')
  end

  klass.define_instance_method('attach_variable') do |method|
    method.define_argument('mname')
    method.define_argument('a1')
    method.define_optional_argument('a2')
  end

  klass.define_instance_method('callback') do |method|
    method.define_argument('a1')
    method.define_argument('a2')
    method.define_optional_argument('a3')
  end

  klass.define_instance_method('enum') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('enum_type') do |method|
    method.define_argument('tag')
  end

  klass.define_instance_method('enum_value') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('ffi_function_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('ffi_function_not_implemented') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('ffi_lib') do |method|
    method.define_rest_argument('names')
  end

  klass.define_instance_method('ffi_lib_flags') do |method|
    method.define_rest_argument('flags')
  end

  klass.define_instance_method('find_type') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('flags_map')

  klass.define_instance_method('pointer_as_function') do |method|
    method.define_argument('name')
    method.define_argument('ptr')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_instance_method('typedef') do |method|
    method.define_argument('old')
    method.define_argument('add')
  end
end

##
# Constant: Rubinius::FFI::Library::LIBC
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Library::LIBC') do |klass|
end

##
# Constant: Rubinius::FFI::MemoryPointer
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::MemoryPointer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Pointer'))

  klass.define_method('__class_init__')

  klass.define_method('from_string') do |method|
    method.define_argument('str')
  end

  klass.define_method('malloc') do |method|
    method.define_argument('total')
  end

  klass.define_method('new') do |method|
    method.define_argument('type')
    method.define_optional_argument('count')
    method.define_optional_argument('clear')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('which')
  end

  klass.define_instance_method('autorelease=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('copy')

  klass.define_instance_method('free')

  klass.define_instance_method('total')

  klass.define_instance_method('total=')

  klass.define_instance_method('type_size')

  klass.define_instance_method('type_size=')
end

##
# Constant: Rubinius::FFI::MemoryPointer::CURRENT_PROCESS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::MemoryPointer::CURRENT_PROCESS') do |klass|
end

##
# Constant: Rubinius::FFI::MemoryPointer::DLERROR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::MemoryPointer::DLERROR') do |klass|
end

##
# Constant: Rubinius::FFI::MemoryPointer::DLOPEN
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::MemoryPointer::DLOPEN') do |klass|
end

##
# Constant: Rubinius::FFI::MemoryPointer::DLSYM
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::MemoryPointer::DLSYM') do |klass|
end

##
# Constant: Rubinius::FFI::MemoryPointer::NULL
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::MemoryPointer::NULL') do |klass|
end

##
# Constant: Rubinius::FFI::NotFoundError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::NotFoundError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('RuntimeError'))
end

##
# Constant: Rubinius::FFI::Platform
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('mac?')

  klass.define_method('unix?')

  klass.define_method('windows?')
end

##
# Constant: Rubinius::FFI::Platform::ARCH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::ARCH') do |klass|
end

##
# Constant: Rubinius::FFI::Platform::File
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::File') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rubinius::FFI::Platform::File::PATH_SEPARATOR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::File::PATH_SEPARATOR') do |klass|
end

##
# Constant: Rubinius::FFI::Platform::File::SEPARATOR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::File::SEPARATOR') do |klass|
end

##
# Constant: Rubinius::FFI::Platform::LIBSUFFIX
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::LIBSUFFIX') do |klass|
end

##
# Constant: Rubinius::FFI::Platform::LONG_SIZE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::LONG_SIZE') do |klass|
end

##
# Constant: Rubinius::FFI::Platform::Math
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::Math') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('acos')

  klass.define_method('acosh')

  klass.define_method('asin')

  klass.define_method('asinh')

  klass.define_method('atan')

  klass.define_method('atan2')

  klass.define_method('atanh')

  klass.define_method('cbrt')

  klass.define_method('cos')

  klass.define_method('cosh')

  klass.define_method('erf')

  klass.define_method('erfc')

  klass.define_method('exp')

  klass.define_method('fabs')

  klass.define_method('frexp')

  klass.define_method('hypot')

  klass.define_method('ldexp')

  klass.define_method('lgamma_r')

  klass.define_method('log')

  klass.define_method('log10')

  klass.define_method('log2') do |method|
    method.define_argument('x')
  end

  klass.define_method('modf')

  klass.define_method('signbit')

  klass.define_method('sin')

  klass.define_method('sinh')

  klass.define_method('sqrt')

  klass.define_method('tan')

  klass.define_method('tanh')

  klass.define_method('tgamma')
end

##
# Constant: Rubinius::FFI::Platform::OS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::OS') do |klass|
end

##
# Constant: Rubinius::FFI::Platform::POSIX
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::POSIX') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('access')

  klass.define_method('chdir')

  klass.define_method('chmod')

  klass.define_method('chown')

  klass.define_method('chroot')

  klass.define_method('dup')

  klass.define_method('endgrent')

  klass.define_method('endpwent')

  klass.define_method('errno')

  klass.define_method('errno=')

  klass.define_method('fchmod')

  klass.define_method('fchown')

  klass.define_method('fcntl')

  klass.define_method('flock')

  klass.define_method('free')

  klass.define_method('fstat')

  klass.define_method('fsync')

  klass.define_method('ftruncate')

  klass.define_method('getcwd')

  klass.define_method('getegid')

  klass.define_method('geteuid')

  klass.define_method('getgid')

  klass.define_method('getgrent')

  klass.define_method('getgrgid')

  klass.define_method('getgrnam')

  klass.define_method('getgroups')

  klass.define_method('getpgid')

  klass.define_method('getpgrp')

  klass.define_method('getpid')

  klass.define_method('getppid')

  klass.define_method('getpriority')

  klass.define_method('getpwent')

  klass.define_method('getpwnam')

  klass.define_method('getpwuid')

  klass.define_method('getrlimit')

  klass.define_method('getuid')

  klass.define_method('initgroups')

  klass.define_method('ioctl')

  klass.define_method('isatty')

  klass.define_method('kill')

  klass.define_method('lchmod')

  klass.define_method('lchown')

  klass.define_method('link')

  klass.define_method('lstat')

  klass.define_method('major')

  klass.define_method('malloc')

  klass.define_method('memcpy')

  klass.define_method('memset')

  klass.define_method('minor')

  klass.define_method('mkdir')

  klass.define_method('perror')

  klass.define_method('readlink')

  klass.define_method('realloc')

  klass.define_method('rename')

  klass.define_method('rmdir')

  klass.define_method('setegid')

  klass.define_method('seteuid')

  klass.define_method('setgid')

  klass.define_method('setgrent')

  klass.define_method('setgroups')

  klass.define_method('setpgid')

  klass.define_method('setpriority')

  klass.define_method('setpwent')

  klass.define_method('setregid')

  klass.define_method('setresgid')

  klass.define_method('setresuid')

  klass.define_method('setreuid')

  klass.define_method('setrlimit')

  klass.define_method('setsid')

  klass.define_method('setuid')

  klass.define_method('stat')

  klass.define_method('strerror')

  klass.define_method('symlink')

  klass.define_method('truncate')

  klass.define_method('umask')

  klass.define_method('unlink')

  klass.define_method('utimes')
end

##
# Constant: Rubinius::FFI::Platform::POSIX::TimeVal
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::POSIX::TimeVal') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct'))

  klass.define_method('__class_init__')
end

##
# Constant: Rubinius::FFI::Platform::POSIX::TimeVal::InlineArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::POSIX::TimeVal::InlineArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('idx')
    method.define_argument('val')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('type')
    method.define_argument('ptr')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ptr')
end

##
# Constant: Rubinius::FFI::Platform::POSIX::TimeVal::InlineCharArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Platform::POSIX::TimeVal::InlineCharArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct::InlineArray'))

  klass.define_method('__class_init__')

  klass.define_instance_method('inspect')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_str')
end

##
# Constant: Rubinius::FFI::Pointer
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Pointer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('size')

  klass.define_instance_method('+') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('address')

  klass.define_instance_method('address=') do |method|
    method.define_argument('address')
  end

  klass.define_instance_method('get_at_offset') do |method|
    method.define_argument('offset')
    method.define_argument('type')
  end

  klass.define_instance_method('get_bytes') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('a1')
    method.define_optional_argument('a2')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('network_order') do |method|
    method.define_argument('start')
    method.define_argument('size')
  end

  klass.define_instance_method('null?')

  klass.define_instance_method('primitive_read_char') do |method|
    method.define_argument('signed')
  end

  klass.define_instance_method('primitive_read_double')

  klass.define_instance_method('primitive_read_float')

  klass.define_instance_method('primitive_read_int') do |method|
    method.define_argument('signed')
  end

  klass.define_instance_method('primitive_read_long') do |method|
    method.define_argument('signed')
  end

  klass.define_instance_method('primitive_read_long_long') do |method|
    method.define_argument('signed')
  end

  klass.define_instance_method('primitive_read_pointer')

  klass.define_instance_method('primitive_read_short') do |method|
    method.define_argument('signed')
  end

  klass.define_instance_method('primitive_write_char') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('primitive_write_double') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('primitive_write_float') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('primitive_write_int') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('primitive_write_long') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('primitive_write_long_long') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('primitive_write_pointer') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('primitive_write_short') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('read_array_of_type') do |method|
    method.define_argument('type')
    method.define_argument('reader')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_string') do |method|
    method.define_optional_argument('len')
  end

  klass.define_instance_method('read_string_length') do |method|
    method.define_argument('len')
  end

  klass.define_instance_method('read_string_to_null')

  klass.define_instance_method('set_at_offset') do |method|
    method.define_argument('offset')
    method.define_argument('type')
    method.define_argument('val')
  end

  klass.define_instance_method('to_i')

  klass.define_instance_method('write_array_of_type') do |method|
    method.define_argument('type')
    method.define_argument('writer')
    method.define_argument('ary')
  end

  klass.define_instance_method('write_string') do |method|
    method.define_argument('str')
    method.define_optional_argument('len')
  end

  klass.define_instance_method('write_string_length') do |method|
    method.define_argument('str')
    method.define_argument('len')
  end
end

##
# Constant: Rubinius::FFI::Pointer::CURRENT_PROCESS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Pointer::CURRENT_PROCESS') do |klass|
end

##
# Constant: Rubinius::FFI::Pointer::DLERROR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Pointer::DLERROR') do |klass|
end

##
# Constant: Rubinius::FFI::Pointer::DLOPEN
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Pointer::DLOPEN') do |klass|
end

##
# Constant: Rubinius::FFI::Pointer::DLSYM
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Pointer::DLSYM') do |klass|
end

##
# Constant: Rubinius::FFI::Pointer::NULL
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Pointer::NULL') do |klass|
end

##
# Constant: Rubinius::FFI::PointerAccessors
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::PointerAccessors') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('get_array_of_char') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_double') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_float') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_float32') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_float64') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_int') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_int16') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_int32') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_int64') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_int8') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_long') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_long_long') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_pointer') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_short') do |method|
    method.define_argument('offset')
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('get_array_of_uchar') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_uint') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_uint16') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_uint32') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_uint64') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_uint8') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_ulong') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_ulong_long') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_array_of_ushort') do |method|
    method.define_argument('offset')
    method.define_argument('length')
  end

  klass.define_instance_method('get_char') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_double') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_float') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_float32') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_float64') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_int') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_int16') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_int32') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_int64') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_int8') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_long') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_long_long') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_pointer') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_short') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_uchar') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_uint') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_uint16') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_uint32') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_uint64') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_uint8') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_ulong') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_ulong_long') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('get_ushort') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('put_array_of_char') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_double') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_float') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_float32') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_float64') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_int') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_int16') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_int32') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_int64') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_int8') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_long') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_long_long') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_pointer') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_short') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_uchar') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_uint') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_uint16') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_uint32') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_uint64') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_uint8') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_ulong') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_ulong_long') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_array_of_ushort') do |method|
    method.define_argument('offset')
    method.define_argument('ary')
  end

  klass.define_instance_method('put_char') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_double') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_float') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_float32') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_float64') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_int') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_int16') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_int32') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_int64') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_int8') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_long') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_long_long') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_pointer') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_short') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_uchar') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_uint') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_uint16') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_uint32') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_uint64') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_uint8') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_ulong') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_ulong_long') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('put_ushort') do |method|
    method.define_argument('offset')
    method.define_argument('obj')
  end

  klass.define_instance_method('read_array_of_char') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_double') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_float') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_float32') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_float64') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_int') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_int16') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_int32') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_int64') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_int8') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_long') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_long_long') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_pointer') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_short') do |method|
    method.define_argument('length')
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_array_of_uchar') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_uint') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_uint16') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_uint32') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_uint64') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_uint8') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_ulong') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_ulong_long') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_array_of_ushort') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('read_char') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_double')

  klass.define_instance_method('read_float')

  klass.define_instance_method('read_float32')

  klass.define_instance_method('read_float64')

  klass.define_instance_method('read_int') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_int16') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_int32') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_int64') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_int8') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_long') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_long_long') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_pointer')

  klass.define_instance_method('read_short') do |method|
    method.define_optional_argument('signed')
  end

  klass.define_instance_method('read_uchar')

  klass.define_instance_method('read_uint')

  klass.define_instance_method('read_uint16')

  klass.define_instance_method('read_uint32')

  klass.define_instance_method('read_uint64')

  klass.define_instance_method('read_uint8')

  klass.define_instance_method('read_ulong')

  klass.define_instance_method('read_ulong_long')

  klass.define_instance_method('read_ushort')

  klass.define_instance_method('write_array_of_char') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_double') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_float') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_float32') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_float64') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_int') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_int16') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_int32') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_int64') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_int8') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_long') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_long_long') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_pointer') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_short') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_uchar') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_uint') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_uint16') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_uint32') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_uint64') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_uint8') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_ulong') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_ulong_long') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_array_of_ushort') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('write_char') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_double') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_float') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_float32') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_float64') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_int') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_int16') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_int32') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_int64') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_int8') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_long') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_long_long') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_pointer') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_short') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_uchar') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_uint') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_uint16') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_uint32') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_uint64') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_uint8') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_ulong') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_ulong_long') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('write_ushort') do |method|
    method.define_argument('obj')
  end
end

##
# Constant: Rubinius::FFI::Struct
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Struct') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('config') do |method|
    method.define_argument('base')
    method.define_rest_argument('fields')
  end

  klass.define_method('find_nested_parent')

  klass.define_method('layout') do |method|
    method.define_rest_argument('spec')
  end

  klass.define_method('members')

  klass.define_method('offset_of') do |method|
    method.define_argument('name')
  end

  klass.define_method('offsets')

  klass.define_method('size')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('field')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('field')
    method.define_argument('val')
  end

  klass.define_instance_method('free')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('pointer')
    method.define_rest_argument('spec')
  end

  klass.define_instance_method('initialize_copy') do |method|
    method.define_argument('ptr')
  end

  klass.define_instance_method('members')

  klass.define_instance_method('null?')

  klass.define_instance_method('offset_of') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('offsets')

  klass.define_instance_method('pointer')

  klass.define_instance_method('size')

  klass.define_instance_method('to_ptr')

  klass.define_instance_method('values')
end

##
# Constant: Rubinius::FFI::Struct::InlineArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Struct::InlineArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('idx')
    method.define_argument('val')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('type')
    method.define_argument('ptr')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ptr')
end

##
# Constant: Rubinius::FFI::Struct::InlineArray::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Struct::InlineArray::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::FFI::Struct::InlineCharArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Struct::InlineCharArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct::InlineArray'))

  klass.define_method('__class_init__')

  klass.define_instance_method('inspect')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_str')
end

##
# Constant: Rubinius::FFI::Struct::InlineCharArray::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Struct::InlineCharArray::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::FFI::TYPE_BOOL
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_BOOL') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_CHARARR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_CHARARR') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_DOUBLE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_DOUBLE') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_ENUM
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_ENUM') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_FLOAT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_FLOAT') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_INT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_INT') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_LL
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_LL') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_LONG
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_LONG') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_PTR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_PTR') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_SHORT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_SHORT') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_STRING
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_STRING') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_STRPTR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_STRPTR') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_UCHAR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_UCHAR') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_UINT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_UINT') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_ULL
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_ULL') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_ULONG
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_ULONG') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_USHORT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_USHORT') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_VARARGS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_VARARGS') do |klass|
end

##
# Constant: Rubinius::FFI::TYPE_VOID
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TYPE_VOID') do |klass|
end

##
# Constant: Rubinius::FFI::Type
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Type') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')
end

##
# Constant: Rubinius::FFI::Type::Array
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Type::Array') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('element_type')

  klass.define_instance_method('implementation')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('element_type')
    method.define_argument('size')
    method.define_optional_argument('impl_class')
  end

  klass.define_instance_method('size')
end

##
# Constant: Rubinius::FFI::Type::StructByValue
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Type::StructByValue') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('implementation')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('struct')
  end
end

##
# Constant: Rubinius::FFI::TypeDefs
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TypeDefs') do |klass|
end

##
# Constant: Rubinius::FFI::TypeError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TypeError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('RuntimeError'))
end

##
# Constant: Rubinius::FFI::TypeSizes
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::TypeSizes') do |klass|
end

##
# Constant: Rubinius::FFI::Union
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Union') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct'))
end

##
# Constant: Rubinius::FFI::Union::InlineArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Union::InlineArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('idx')
    method.define_argument('val')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('type')
    method.define_argument('ptr')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ptr')
end

##
# Constant: Rubinius::FFI::Union::InlineCharArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::FFI::Union::InlineCharArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct::InlineArray'))

  klass.define_method('__class_init__')

  klass.define_instance_method('inspect')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_str')
end

##
# Constant: Rubinius::Fiber
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Fiber') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('create') do |method|
    method.define_argument('callable')
  end

  klass.define_method('current')

  klass.define_method('new') do |method|
    method.define_optional_argument('size')
    method.define_block_argument('block')
  end

  klass.define_method('yield') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('alive?')

  klass.define_instance_method('resume') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('transfer') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: Rubinius::GC
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::GC') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('count')

  klass.define_method('size')

  klass.define_method('time')
end

##
# Constant: Rubinius::GEMS_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::GEMS_PATH') do |klass|
end

##
# Constant: Rubinius::Generator
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Generator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('accumulate_stack') do |method|
    method.define_argument('size')
  end

  klass.define_instance_method('add_literal') do |method|
    method.define_argument('literal')
  end

  klass.define_instance_method('block_index')

  klass.define_instance_method('block_index=')

  klass.define_instance_method('break')

  klass.define_instance_method('break=')

  klass.define_instance_method('close')

  klass.define_instance_method('current_block')

  klass.define_instance_method('current_block=')

  klass.define_instance_method('definition_line') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('detected_args')

  klass.define_instance_method('detected_args=')

  klass.define_instance_method('detected_locals')

  klass.define_instance_method('detected_locals=')

  klass.define_instance_method('dup')

  klass.define_instance_method('encode')

  klass.define_instance_method('execute') do |method|
    method.define_argument('node')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('file=')

  klass.define_instance_method('find_const') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('find_literal') do |method|
    method.define_argument('literal')
  end

  klass.define_instance_method('for_block')

  klass.define_instance_method('for_block=')

  klass.define_instance_method('for_module_body')

  klass.define_instance_method('for_module_body=')

  klass.define_instance_method('gif') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('git') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('ip')

  klass.define_instance_method('ip_to_line') do |method|
    method.define_argument('ip')
  end

  klass.define_instance_method('iseq')

  klass.define_instance_method('last_match') do |method|
    method.define_argument('mode')
    method.define_argument('which')
  end

  klass.define_instance_method('line')

  klass.define_instance_method('literals')

  klass.define_instance_method('local_count')

  klass.define_instance_method('local_count=')

  klass.define_instance_method('local_names')

  klass.define_instance_method('local_names=')

  klass.define_instance_method('max_stack_size')

  klass.define_instance_method('meta_to_s') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('priv')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('new_basic_block')

  klass.define_instance_method('new_label')

  klass.define_instance_method('new_stack_local')

  klass.define_instance_method('next')

  klass.define_instance_method('next=')

  klass.define_instance_method('package') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('pop_modifiers')

  klass.define_instance_method('pop_state')

  klass.define_instance_method('post_args')

  klass.define_instance_method('post_args=')

  klass.define_instance_method('primitive')

  klass.define_instance_method('primitive=')

  klass.define_instance_method('push') do |method|
    method.define_argument('what')
  end

  klass.define_instance_method('push_arg') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('push_const') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('push_generator') do |method|
    method.define_argument('generator')
  end

  klass.define_instance_method('push_literal') do |method|
    method.define_argument('literal')
  end

  klass.define_instance_method('push_literal_at') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('push_local') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('push_modifiers')

  klass.define_instance_method('push_state') do |method|
    method.define_argument('scope')
  end

  klass.define_instance_method('push_unique_literal') do |method|
    method.define_argument('literal')
  end

  klass.define_instance_method('redo')

  klass.define_instance_method('redo=')

  klass.define_instance_method('required_args')

  klass.define_instance_method('required_args=')

  klass.define_instance_method('retry')

  klass.define_instance_method('retry=')

  klass.define_instance_method('run') do |method|
    method.define_argument('node')
  end

  klass.define_instance_method('send') do |method|
    method.define_argument('meth')
    method.define_argument('count')
    method.define_optional_argument('priv')
  end

  klass.define_instance_method('send_primitive') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('send_super') do |method|
    method.define_argument('meth')
    method.define_argument('args')
    method.define_optional_argument('splat')
  end

  klass.define_instance_method('send_vcall') do |method|
    method.define_argument('meth')
  end

  klass.define_instance_method('send_with_block') do |method|
    method.define_argument('meth')
    method.define_argument('count')
    method.define_optional_argument('priv')
  end

  klass.define_instance_method('send_with_splat') do |method|
    method.define_argument('meth')
    method.define_argument('args')
    method.define_optional_argument('priv')
    method.define_optional_argument('concat')
  end

  klass.define_instance_method('set_arg') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('set_line') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('set_local') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('splat_index')

  klass.define_instance_method('splat_index=')

  klass.define_instance_method('state')

  klass.define_instance_method('stream')

  klass.define_instance_method('swap')

  klass.define_instance_method('total_args')

  klass.define_instance_method('total_args=')

  klass.define_instance_method('use_detected')
end

##
# Constant: Rubinius::Generator::BasicBlock
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Generator::BasicBlock') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('add_stack') do |method|
    method.define_argument('read')
    method.define_argument('write')
  end

  klass.define_instance_method('check_stack') do |method|
    method.define_argument('stack_size')
  end

  klass.define_instance_method('close') do |method|
    method.define_optional_argument('record_exit')
  end

  klass.define_instance_method('flow_stack_size') do |method|
    method.define_argument('stack')
  end

  klass.define_instance_method('invalid') do |method|
    method.define_argument('message')
  end

  klass.define_instance_method('left')

  klass.define_instance_method('left=')

  klass.define_instance_method('location') do |method|
    method.define_optional_argument('ip')
  end

  klass.define_instance_method('open')

  klass.define_instance_method('right')

  klass.define_instance_method('right=')

  klass.define_instance_method('validate_stack')

  klass.define_instance_method('visited?')
end

##
# Constant: Rubinius::Generator::BasicBlock::SEPARATOR_SIZE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Generator::BasicBlock::SEPARATOR_SIZE') do |klass|
end

##
# Constant: Rubinius::Generator::Label
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Generator::Label') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('basic_block')

  klass.define_instance_method('position')

  klass.define_instance_method('position=')

  klass.define_instance_method('set!')

  klass.define_instance_method('used')

  klass.define_instance_method('used?')

  klass.define_instance_method('used_at') do |method|
    method.define_argument('ip')
  end
end

##
# Constant: Rubinius::GeneratorMethods
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::GeneratorMethods') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('add_scope')

  klass.define_instance_method('allow_private')

  klass.define_instance_method('call_custom') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('cast_array')

  klass.define_instance_method('cast_for_multi_block_arg')

  klass.define_instance_method('cast_for_single_block_arg')

  klass.define_instance_method('cast_for_splat_block_arg')

  klass.define_instance_method('cast_multi_value')

  klass.define_instance_method('check_frozen')

  klass.define_instance_method('check_interrupts')

  klass.define_instance_method('check_serial') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('check_serial_private') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('clear_exception')

  klass.define_instance_method('create_block') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('dup_many') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('dup_top')

  klass.define_instance_method('emit_push_literal') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('ensure_return')

  klass.define_instance_method('find_const') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('find_const_fast') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('goto') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('goto_if_false') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('goto_if_true') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('instance_of')

  klass.define_instance_method('invoke_primitive') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('is_nil')

  klass.define_instance_method('kind_of')

  klass.define_instance_method('make_array') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('meta_push_0')

  klass.define_instance_method('meta_push_1')

  klass.define_instance_method('meta_push_2')

  klass.define_instance_method('meta_push_neg_1')

  klass.define_instance_method('meta_send_call') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('meta_send_op_equal') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('meta_send_op_gt') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('meta_send_op_lt') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('meta_send_op_minus') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('meta_send_op_plus') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('meta_send_op_tequal') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('meta_to_s') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('move_down') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('noop')

  klass.define_instance_method('passed_arg') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('passed_blockarg') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('pop')

  klass.define_instance_method('pop_many') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('pop_unwind')

  klass.define_instance_method('push_block')

  klass.define_instance_method('push_block_arg')

  klass.define_instance_method('push_const_fast') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('push_cpath_top')

  klass.define_instance_method('push_current_exception')

  klass.define_instance_method('push_exception_state')

  klass.define_instance_method('push_false')

  klass.define_instance_method('push_has_block')

  klass.define_instance_method('push_int') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('push_ivar') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('push_local') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('push_local_depth') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('push_mirror')

  klass.define_instance_method('push_my_field') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('push_my_offset') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('push_nil')

  klass.define_instance_method('push_proc')

  klass.define_instance_method('push_rubinius')

  klass.define_instance_method('push_scope')

  klass.define_instance_method('push_self')

  klass.define_instance_method('push_stack_local') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('push_true')

  klass.define_instance_method('push_type')

  klass.define_instance_method('push_undef')

  klass.define_instance_method('push_variables')

  klass.define_instance_method('raise_break')

  klass.define_instance_method('raise_exc')

  klass.define_instance_method('raise_return')

  klass.define_instance_method('reraise')

  klass.define_instance_method('restore_exception_state')

  klass.define_instance_method('ret')

  klass.define_instance_method('rotate') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('send_method') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('send_stack') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('send_stack_with_block') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('send_stack_with_splat') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('send_super_stack_with_block') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('send_super_stack_with_splat') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('set_call_flags') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('set_const') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('set_const_at') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('set_ivar') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('set_literal') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('set_local') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('set_local_depth') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('set_stack_local') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('setup_unwind') do |method|
    method.define_argument('arg1')
    method.define_argument('arg2')
  end

  klass.define_instance_method('shift_array')

  klass.define_instance_method('store_my_field') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('string_append')

  klass.define_instance_method('string_build') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('string_dup')

  klass.define_instance_method('swap_stack')

  klass.define_instance_method('yield_debugger')

  klass.define_instance_method('yield_splat') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('yield_stack') do |method|
    method.define_argument('arg1')
  end

  klass.define_instance_method('zsuper') do |method|
    method.define_argument('arg1')
  end
end

##
# Constant: Rubinius::GlobalCacheEntry
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::GlobalCacheEntry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

##
# Constant: Rubinius::GlobalVariables
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::GlobalVariables') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('data')
  end

  klass.define_instance_method('add_alias') do |method|
    method.define_argument('current_name')
    method.define_argument('alias_name')
  end

  klass.define_instance_method('illegal_set') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('initialize')

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('nil_return')

  klass.define_instance_method('raise_readonly') do |method|
    method.define_argument('key')
    method.define_argument('data')
  end

  klass.define_instance_method('read_only') do |method|
    method.define_rest_argument('vars')
  end

  klass.define_instance_method('set!') do |method|
    method.define_argument('key')
    method.define_argument('data')
  end

  klass.define_instance_method('set_filter') do |method|
    method.define_argument('var')
    method.define_argument('block')
  end

  klass.define_instance_method('set_hook') do |method|
    method.define_argument('var')
    method.define_optional_argument('getter')
    method.define_optional_argument('setter')
    method.define_block_argument('block')
  end

  klass.define_instance_method('variables')
end

##
# Constant: Rubinius::Globals
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Globals') do |klass|
end

##
# Constant: Rubinius::HDR18_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::HDR18_PATH') do |klass|
end

##
# Constant: Rubinius::HDR19_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::HDR19_PATH') do |klass|
end

##
# Constant: Rubinius::Hook
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Hook') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('add') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('initialize')

  klass.define_instance_method('remove') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('trigger!') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: Rubinius::IdentityMap
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::IdentityMap') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('from') do |method|
    method.define_rest_argument('arrays')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('item')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('item')
  end

  klass.define_instance_method('initialize')

  klass.define_instance_method('insert') do |method|
    method.define_argument('item')
    method.define_block_argument('block')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_array')
end

##
# Constant: Rubinius::IdentityMap::MIN_ROW
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::IdentityMap::MIN_ROW') do |klass|
end

##
# Constant: Rubinius::IdentityMap::ROW_GROWTH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::IdentityMap::ROW_GROWTH') do |klass|
end

##
# Constant: Rubinius::IncludedModule
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::IncludedModule') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Module'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('attach_to') do |method|
    method.define_argument('cls')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('mod')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('module')

  klass.define_instance_method('name')

  klass.define_instance_method('superclass')

  klass.define_instance_method('to_s')
end

##
# Constant: Rubinius::InstructionDecoder
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::InstructionDecoder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('decode') do |method|
    method.define_optional_argument('symbols')
  end

  klass.define_instance_method('decode_between') do |method|
    method.define_argument('start')
    method.define_argument('fin')
  end

  klass.define_instance_method('show')
end

##
# Constant: Rubinius::InstructionSequence
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::InstructionSequence') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('idx')
    method.define_argument('val')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('size')
  end

  klass.define_instance_method('opcodes')

  klass.define_instance_method('size')
end

##
# Constant: Rubinius::InstructionSet
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::InstructionSet') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_argument('name_or_id')
  end

  klass.define_method('__class_init__')

  klass.define_method('opcode') do |method|
    method.define_argument('id')
    method.define_argument('name')
    method.define_optional_argument('params')
  end

  klass.define_method('opcodes')

  klass.define_method('opcodes_map')
end

##
# Constant: Rubinius::InstructionSet::InvalidOpCode
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::InstructionSet::InvalidOpCode') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('RuntimeError'))
end

##
# Constant: Rubinius::InstructionSet::OpCode
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::InstructionSet::OpCode') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arg_count')

  klass.define_instance_method('args')

  klass.define_instance_method('bytecode')

  klass.define_instance_method('control_flow')

  klass.define_instance_method('name')

  klass.define_instance_method('opcode')

  klass.define_instance_method('position')

  klass.define_instance_method('produced_position')

  klass.define_instance_method('size')

  klass.define_instance_method('stack')

  klass.define_instance_method('stack_consumed')

  klass.define_instance_method('stack_difference')

  klass.define_instance_method('stack_produced')

  klass.define_instance_method('to_s')

  klass.define_instance_method('variable_stack')

  klass.define_instance_method('variable_stack?')

  klass.define_instance_method('width')
end

##
# Constant: Rubinius::Internal
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Internal') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Exception'))
end

##
# Constant: Rubinius::InvalidBytecode
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::InvalidBytecode') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Internal'))

  klass.define_method('__class_init__')

  klass.define_instance_method('compiled_code')

  klass.define_instance_method('ip')

  klass.define_instance_method('message')
end

##
# Constant: Rubinius::InvalidRBC
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::InvalidRBC') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('RuntimeError'))
end

##
# Constant: Rubinius::JIT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::JIT') do |klass|
end

##
# Constant: Rubinius::KERNEL_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::KERNEL_PATH') do |klass|
end

##
# Constant: Rubinius::LDSHARED
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LDSHARED') do |klass|
end

##
# Constant: Rubinius::LDSHAREDXX
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LDSHAREDXX') do |klass|
end

##
# Constant: Rubinius::LIBC
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LIBC') do |klass|
end

##
# Constant: Rubinius::LIBSUFFIX
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LIBSUFFIX') do |klass|
end

##
# Constant: Rubinius::LIB_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LIB_PATH') do |klass|
end

##
# Constant: Rubinius::LIB_VERSION
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LIB_VERSION') do |klass|
end

##
# Constant: Rubinius::LRUCache
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LRUCache') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('clear!')

  klass.define_instance_method('current')

  klass.define_instance_method('explain')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('total')
  end

  klass.define_instance_method('misses')

  klass.define_instance_method('retrieve') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('set') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end
end

##
# Constant: Rubinius::LRUCache::Entry
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LRUCache::Entry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('become_first!')

  klass.define_instance_method('detach!')

  klass.define_instance_method('hits')

  klass.define_instance_method('inc!')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('insert_after') do |method|
    method.define_argument('entry')
  end

  klass.define_instance_method('insert_before') do |method|
    method.define_argument('entry')
  end

  klass.define_instance_method('key')

  klass.define_instance_method('next_entry')

  klass.define_instance_method('next_entry=')

  klass.define_instance_method('prev_entry')

  klass.define_instance_method('prev_entry=')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Rubinius::List
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::List') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

##
# Constant: Rubinius::List::Node
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::List::Node') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

##
# Constant: Rubinius::LoadedFeatures
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LoadedFeatures') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Array'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<<') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('delete') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('delete_if')

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('size_or_array')
    method.define_optional_argument('obj')
  end

  klass.define_instance_method('pop') do |method|
    method.define_rest_argument('v')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('unshift') do |method|
    method.define_rest_argument('values')
  end
end

##
# Constant: Rubinius::LoadedFeatures::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LoadedFeatures::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::LoadedFeatures::ValueGenerator
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LoadedFeatures::ValueGenerator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('array')
  end

  klass.define_instance_method('next')

  klass.define_instance_method('next?')

  klass.define_instance_method('rewind')
end

##
# Constant: Rubinius::Loader
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Loader') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('debugger')

  klass.define_method('debugger=') do |method|
    method.define_argument('prc')
  end

  klass.define_method('main')

  klass.define_instance_method('check_syntax')

  klass.define_instance_method('debugger')

  klass.define_instance_method('detect_alias')

  klass.define_instance_method('done')

  klass.define_instance_method('epilogue')

  klass.define_instance_method('evals')

  klass.define_instance_method('find_gem_wrapper') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('find_subcommand') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('gemfile')

  klass.define_instance_method('handle_rubyopt') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('handle_simple_options') do |method|
    method.define_argument('argv')
  end

  klass.define_instance_method('irb')

  klass.define_instance_method('load_compiler')

  klass.define_instance_method('load_paths')

  klass.define_instance_method('main')

  klass.define_instance_method('options') do |method|
    method.define_optional_argument('argv')
  end

  klass.define_instance_method('preamble')

  klass.define_instance_method('preload')

  klass.define_instance_method('requires')

  klass.define_instance_method('rubygems')

  klass.define_instance_method('run_at_exits')

  klass.define_instance_method('script')

  klass.define_instance_method('show_syntax_error') do |method|
    method.define_argument('e')
  end

  klass.define_instance_method('show_syntax_errors') do |method|
    method.define_argument('syns')
  end

  klass.define_instance_method('signals')

  klass.define_instance_method('system_load_path')

  klass.define_instance_method('write_last_error') do |method|
    method.define_argument('e')
  end
end

##
# Constant: Rubinius::Loader::RUBYOPT_VALID_OPTIONS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Loader::RUBYOPT_VALID_OPTIONS') do |klass|
end

##
# Constant: Rubinius::Location
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Location') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('of_closest_ruby_method')

  klass.define_instance_method('constant_scope')

  klass.define_instance_method('describe')

  klass.define_instance_method('describe_method')

  klass.define_instance_method('describe_receiver')

  klass.define_instance_method('file') do |method|
    method.define_optional_argument('relative_to')
  end

  klass.define_instance_method('inlined?')

  klass.define_instance_method('inspect')

  klass.define_instance_method('ip')

  klass.define_instance_method('ip_on_current?')

  klass.define_instance_method('is_block')

  klass.define_instance_method('is_jit')

  klass.define_instance_method('line')

  klass.define_instance_method('method')

  klass.define_instance_method('name')

  klass.define_instance_method('position') do |method|
    method.define_optional_argument('relative_to')
  end

  klass.define_instance_method('variables')
end

##
# Constant: Rubinius::Location::Missing
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Location::Missing') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('describe')

  klass.define_instance_method('describe_method')

  klass.define_instance_method('inlined?')

  klass.define_instance_method('is_jit')

  klass.define_instance_method('line')

  klass.define_instance_method('method')

  klass.define_instance_method('name')

  klass.define_instance_method('position') do |method|
    method.define_optional_argument('dir')
  end
end

##
# Constant: Rubinius::LookupTable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LookupTable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('val')
  end

  klass.define_instance_method('bins')

  klass.define_instance_method('clone')

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('dup')

  klass.define_instance_method('duplicate')

  klass.define_instance_method('each')

  klass.define_instance_method('empty?')

  klass.define_instance_method('fetch') do |method|
    method.define_argument('key')
    method.define_argument('return_on_failure')
  end

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('length')

  klass.define_instance_method('member?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_s')

  klass.define_instance_method('values')
end

##
# Constant: Rubinius::LookupTable::Bucket
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LookupTable::Bucket') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('key')

  klass.define_instance_method('next')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::LookupTable::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::LookupTable::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::Melbourne
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Melbourne') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('parse_file') do |method|
    method.define_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_method('parse_string') do |method|
    method.define_argument('string')
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_method('system_parser')

  klass.define_instance_method('add_magic_comment') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('add_pre_exe') do |method|
    method.define_argument('node')
  end

  klass.define_instance_method('file_to_ast')

  klass.define_instance_method('file_to_ast_18')

  klass.define_instance_method('file_to_ast_19')

  klass.define_instance_method('magic_handler')

  klass.define_instance_method('magic_handler=')

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('sym')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('parse_file')

  klass.define_instance_method('parse_string') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('pre_exe')

  klass.define_instance_method('process_alias') do |method|
    method.define_argument('line')
    method.define_argument('to')
    method.define_argument('from')
  end

  klass.define_instance_method('process_and') do |method|
    method.define_argument('line')
    method.define_argument('left')
    method.define_argument('right')
  end

  klass.define_instance_method('process_args') do |method|
    method.define_argument('line')
    method.define_argument('args')
    method.define_argument('defaults')
    method.define_argument('splat')
  end

  klass.define_instance_method('process_argscat') do |method|
    method.define_argument('line')
    method.define_argument('array')
    method.define_argument('rest')
  end

  klass.define_instance_method('process_argspush') do |method|
    method.define_argument('line')
    method.define_argument('arguments')
    method.define_argument('value')
  end

  klass.define_instance_method('process_array') do |method|
    method.define_argument('line')
    method.define_argument('array')
  end

  klass.define_instance_method('process_attrasgn') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
  end

  klass.define_instance_method('process_back_ref') do |method|
    method.define_argument('line')
    method.define_argument('ref')
  end

  klass.define_instance_method('process_begin') do |method|
    method.define_argument('line')
    method.define_argument('body')
  end

  klass.define_instance_method('process_block') do |method|
    method.define_argument('line')
    method.define_argument('array')
  end

  klass.define_instance_method('process_block_arg') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_block_pass') do |method|
    method.define_argument('line')
    method.define_argument('method_send')
    method.define_argument('body')
  end

  klass.define_instance_method('process_break') do |method|
    method.define_argument('line')
    method.define_argument('value')
  end

  klass.define_instance_method('process_call') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
  end

  klass.define_instance_method('process_case') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('whens')
    method.define_argument('else_body')
  end

  klass.define_instance_method('process_cdecl') do |method|
    method.define_argument('line')
    method.define_argument('expr')
    method.define_argument('value')
  end

  klass.define_instance_method('process_class') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('superclass')
    method.define_argument('body')
  end

  klass.define_instance_method('process_colon2') do |method|
    method.define_argument('line')
    method.define_argument('outer')
    method.define_argument('name')
  end

  klass.define_instance_method('process_colon3') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_const') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_cvar') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_cvasgn') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('process_cvdecl') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('process_dangling_node')

  klass.define_instance_method('process_data') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('process_defined') do |method|
    method.define_argument('line')
    method.define_argument('expr')
  end

  klass.define_instance_method('process_defn') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('body')
  end

  klass.define_instance_method('process_defs') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('body')
  end

  klass.define_instance_method('process_dot2') do |method|
    method.define_argument('line')
    method.define_argument('start')
    method.define_argument('finish')
  end

  klass.define_instance_method('process_dot3') do |method|
    method.define_argument('line')
    method.define_argument('start')
    method.define_argument('finish')
  end

  klass.define_instance_method('process_dregx') do |method|
    method.define_argument('line')
    method.define_argument('str')
    method.define_argument('array')
    method.define_argument('flags')
  end

  klass.define_instance_method('process_dregx_once') do |method|
    method.define_argument('line')
    method.define_argument('str')
    method.define_argument('array')
    method.define_argument('flags')
  end

  klass.define_instance_method('process_dstr') do |method|
    method.define_argument('line')
    method.define_argument('str')
    method.define_argument('array')
  end

  klass.define_instance_method('process_dsym') do |method|
    method.define_argument('line')
    method.define_argument('str')
    method.define_argument('array')
  end

  klass.define_instance_method('process_dxstr') do |method|
    method.define_argument('line')
    method.define_argument('str')
    method.define_argument('array')
  end

  klass.define_instance_method('process_ensure') do |method|
    method.define_argument('line')
    method.define_argument('body')
    method.define_argument('ensr')
  end

  klass.define_instance_method('process_evstr') do |method|
    method.define_argument('line')
    method.define_argument('value')
  end

  klass.define_instance_method('process_false') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_fcall') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('arguments')
  end

  klass.define_instance_method('process_file') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_fixnum') do |method|
    method.define_argument('line')
    method.define_argument('value')
  end

  klass.define_instance_method('process_flip2') do |method|
    method.define_argument('line')
    method.define_argument('start')
    method.define_argument('finish')
  end

  klass.define_instance_method('process_flip3') do |method|
    method.define_argument('line')
    method.define_argument('start')
    method.define_argument('finish')
  end

  klass.define_instance_method('process_float') do |method|
    method.define_argument('line')
    method.define_argument('str')
  end

  klass.define_instance_method('process_for') do |method|
    method.define_argument('line')
    method.define_argument('iter')
    method.define_argument('arguments')
    method.define_argument('body')
  end

  klass.define_instance_method('process_gasgn') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('expr')
  end

  klass.define_instance_method('process_gvar') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_hash') do |method|
    method.define_argument('line')
    method.define_argument('array')
  end

  klass.define_instance_method('process_iasgn') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('process_if') do |method|
    method.define_argument('line')
    method.define_argument('cond')
    method.define_argument('body')
    method.define_argument('else_body')
  end

  klass.define_instance_method('process_iter') do |method|
    method.define_argument('line')
    method.define_argument('method_send')
    method.define_argument('arguments')
    method.define_argument('body')
  end

  klass.define_instance_method('process_ivar') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_lasgn') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('process_lit') do |method|
    method.define_argument('line')
    method.define_argument('sym')
  end

  klass.define_instance_method('process_lvar') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_masgn') do |method|
    method.define_argument('line')
    method.define_argument('left')
    method.define_argument('right')
    method.define_argument('splat')
  end

  klass.define_instance_method('process_match') do |method|
    method.define_argument('line')
    method.define_argument('pattern')
    method.define_argument('flags')
  end

  klass.define_instance_method('process_match2') do |method|
    method.define_argument('line')
    method.define_argument('pattern')
    method.define_argument('value')
  end

  klass.define_instance_method('process_match3') do |method|
    method.define_argument('line')
    method.define_argument('pattern')
    method.define_argument('value')
  end

  klass.define_instance_method('process_missing_node') do |method|
    method.define_argument('line')
    method.define_argument('node_name')
    method.define_argument('node_type')
  end

  klass.define_instance_method('process_module') do |method|
    method.define_argument('line')
    method.define_argument('name')
    method.define_argument('body')
  end

  klass.define_instance_method('process_negate') do |method|
    method.define_argument('line')
    method.define_argument('value')
  end

  klass.define_instance_method('process_next') do |method|
    method.define_argument('line')
    method.define_argument('value')
  end

  klass.define_instance_method('process_nil') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_not') do |method|
    method.define_argument('line')
    method.define_argument('value')
  end

  klass.define_instance_method('process_nth_ref') do |method|
    method.define_argument('line')
    method.define_argument('ref')
  end

  klass.define_instance_method('process_number') do |method|
    method.define_argument('line')
    method.define_argument('base')
    method.define_argument('str')
  end

  klass.define_instance_method('process_op_asgn1') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('index')
    method.define_argument('op')
    method.define_argument('value')
  end

  klass.define_instance_method('process_op_asgn2') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('op')
    method.define_argument('value')
  end

  klass.define_instance_method('process_op_asgn_and') do |method|
    method.define_argument('line')
    method.define_argument('var')
    method.define_argument('value')
  end

  klass.define_instance_method('process_op_asgn_or') do |method|
    method.define_argument('line')
    method.define_argument('var')
    method.define_argument('value')
  end

  klass.define_instance_method('process_or') do |method|
    method.define_argument('line')
    method.define_argument('left')
    method.define_argument('right')
  end

  klass.define_instance_method('process_parse_error') do |method|
    method.define_argument('message')
    method.define_argument('column')
    method.define_argument('line')
    method.define_argument('source')
  end

  klass.define_instance_method('process_postexe') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_preexe') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_redo') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_regex') do |method|
    method.define_argument('line')
    method.define_argument('str')
    method.define_argument('flags')
  end

  klass.define_instance_method('process_resbody') do |method|
    method.define_argument('line')
    method.define_argument('conditions')
    method.define_argument('body')
    method.define_argument('nxt')
  end

  klass.define_instance_method('process_rescue') do |method|
    method.define_argument('line')
    method.define_argument('body')
    method.define_argument('rescue_body')
    method.define_argument('else_body')
  end

  klass.define_instance_method('process_retry') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_return') do |method|
    method.define_argument('line')
    method.define_argument('value')
  end

  klass.define_instance_method('process_sclass') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('body')
  end

  klass.define_instance_method('process_scope') do |method|
    method.define_argument('line')
    method.define_argument('body')
  end

  klass.define_instance_method('process_self') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_splat') do |method|
    method.define_argument('line')
    method.define_argument('expr')
  end

  klass.define_instance_method('process_str') do |method|
    method.define_argument('line')
    method.define_argument('str')
  end

  klass.define_instance_method('process_super') do |method|
    method.define_argument('line')
    method.define_argument('arguments')
  end

  klass.define_instance_method('process_svalue') do |method|
    method.define_argument('line')
    method.define_argument('expr')
  end

  klass.define_instance_method('process_to_ary') do |method|
    method.define_argument('line')
    method.define_argument('expr')
  end

  klass.define_instance_method('process_transforms') do |method|
    method.define_argument('line')
    method.define_argument('receiver')
    method.define_argument('name')
    method.define_argument('arguments')
    method.define_optional_argument('privately')
  end

  klass.define_instance_method('process_true') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_undef') do |method|
    method.define_argument('line')
    method.define_argument('sym')
  end

  klass.define_instance_method('process_until') do |method|
    method.define_argument('line')
    method.define_argument('cond')
    method.define_argument('body')
    method.define_argument('check_first')
  end

  klass.define_instance_method('process_valias') do |method|
    method.define_argument('line')
    method.define_argument('to')
    method.define_argument('from')
  end

  klass.define_instance_method('process_values') do |method|
    method.define_argument('line')
    method.define_argument('first')
    method.define_argument('rest')
  end

  klass.define_instance_method('process_vcall') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_when') do |method|
    method.define_argument('line')
    method.define_argument('conditions')
    method.define_argument('body')
  end

  klass.define_instance_method('process_while') do |method|
    method.define_argument('line')
    method.define_argument('cond')
    method.define_argument('body')
    method.define_argument('check_first')
  end

  klass.define_instance_method('process_xstr') do |method|
    method.define_argument('line')
    method.define_argument('str')
  end

  klass.define_instance_method('process_yield') do |method|
    method.define_argument('line')
    method.define_argument('arguments')
    method.define_argument('unwrap')
  end

  klass.define_instance_method('process_zarray') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('process_zsuper') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('references')

  klass.define_instance_method('references=')

  klass.define_instance_method('string_to_ast')

  klass.define_instance_method('string_to_ast_18')

  klass.define_instance_method('string_to_ast_19')

  klass.define_instance_method('syntax_error')

  klass.define_instance_method('syntax_errors')

  klass.define_instance_method('transforms')

  klass.define_instance_method('transforms=')
end

##
# Constant: Rubinius::Melbourne19
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Melbourne19') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Melbourne'))

  klass.define_method('__class_init__')

  klass.define_instance_method('file_to_ast')

  klass.define_instance_method('process_args') do |method|
    method.define_argument('line')
    method.define_argument('required')
    method.define_argument('optional')
    method.define_argument('splat')
    method.define_argument('post')
    method.define_argument('block')
  end

  klass.define_instance_method('process_block_pass') do |method|
    method.define_argument('line')
    method.define_argument('arguments')
    method.define_argument('body')
  end

  klass.define_instance_method('process_encoding') do |method|
    method.define_argument('line')
    method.define_argument('name')
  end

  klass.define_instance_method('process_for') do |method|
    method.define_argument('line')
    method.define_argument('iter')
    method.define_argument('arguments')
    method.define_argument('body')
  end

  klass.define_instance_method('process_iter') do |method|
    method.define_argument('line')
    method.define_argument('method_send')
    method.define_argument('scope')
  end

  klass.define_instance_method('process_lambda') do |method|
    method.define_argument('line')
    method.define_argument('scope')
  end

  klass.define_instance_method('process_number') do |method|
    method.define_argument('line')
    method.define_argument('value')
  end

  klass.define_instance_method('process_op_asgn_or') do |method|
    method.define_argument('line')
    method.define_argument('var')
    method.define_argument('value')
  end

  klass.define_instance_method('process_opt_arg') do |method|
    method.define_argument('line')
    method.define_argument('arguments')
  end

  klass.define_instance_method('process_postarg') do |method|
    method.define_argument('line')
    method.define_argument('into')
    method.define_argument('rest')
  end

  klass.define_instance_method('process_postexe') do |method|
    method.define_argument('line')
    method.define_argument('body')
  end

  klass.define_instance_method('process_preexe') do |method|
    method.define_argument('line')
    method.define_argument('body')
  end

  klass.define_instance_method('process_scope') do |method|
    method.define_argument('line')
    method.define_argument('arguments')
    method.define_argument('body')
    method.define_argument('locals')
  end

  klass.define_instance_method('process_super') do |method|
    method.define_argument('line')
    method.define_argument('arguments')
  end

  klass.define_instance_method('string_to_ast')
end

##
# Constant: Rubinius::Melbourne20
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Melbourne20') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Melbourne19'))
end

##
# Constant: Rubinius::MethodEquality
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::MethodEquality') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('delegated_receiver_for') do |method|
    method.define_argument('meth')
  end

  klass.define_method('either_method_is_delegated?') do |method|
    method.define_argument('meth')
    method.define_argument('other')
  end

  klass.define_method('method_equal_to_delegated_method_receiver?') do |method|
    method.define_argument('meth')
    method.define_argument('other')
  end
end

##
# Constant: Rubinius::MethodTable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::MethodTable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('alias') do |method|
    method.define_argument('name')
    method.define_argument('visibility')
    method.define_argument('original_name')
    method.define_argument('original_exec')
    method.define_argument('original_mod')
  end

  klass.define_instance_method('bins')

  klass.define_instance_method('delete') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('dup')

  klass.define_instance_method('duplicate')

  klass.define_instance_method('each')

  klass.define_instance_method('filter_entries')

  klass.define_instance_method('has_name?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('hash')
  end

  klass.define_instance_method('length')

  klass.define_instance_method('lookup') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('member?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('name?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('private_names')

  klass.define_instance_method('protected_names')

  klass.define_instance_method('public_names')

  klass.define_instance_method('size')

  klass.define_instance_method('store') do |method|
    method.define_argument('name')
    method.define_argument('exec')
    method.define_argument('visibility')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('values')
end

##
# Constant: Rubinius::MethodTable::Bucket
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::MethodTable::Bucket') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('method')

  klass.define_instance_method('method=')

  klass.define_instance_method('name')

  klass.define_instance_method('next')

  klass.define_instance_method('private?')

  klass.define_instance_method('protected?')

  klass.define_instance_method('public?')

  klass.define_instance_method('visibility')

  klass.define_instance_method('visibility=')
end

##
# Constant: Rubinius::MethodTable::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::MethodTable::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::Mirror
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Mirror') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('reflect') do |method|
    method.define_argument('obj')
  end

  klass.define_method('subject')

  klass.define_method('subject=') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('object')
end

##
# Constant: Rubinius::Mirror::Object
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Mirror::Object') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Mirror'))

  klass.define_method('__class_init__')
end

##
# Constant: Rubinius::Mirror::String
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Mirror::String') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Mirror'))

  klass.define_method('__class_init__')

  klass.define_instance_method('byte_index') do |method|
    method.define_argument('value')
    method.define_optional_argument('start')
  end

  klass.define_instance_method('byte_to_character_index') do |method|
    method.define_argument('idx')
    method.define_optional_argument('start')
  end

  klass.define_instance_method('character_index') do |method|
    method.define_argument('str')
    method.define_argument('start')
  end

  klass.define_instance_method('character_to_byte_index') do |method|
    method.define_argument('idx')
    method.define_optional_argument('start')
  end

  klass.define_instance_method('copy_from') do |method|
    method.define_argument('other')
    method.define_argument('start')
    method.define_argument('size')
    method.define_argument('dest')
  end

  klass.define_instance_method('previous_byte_index') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('resize_capacity') do |method|
    method.define_argument('count')
  end

  klass.define_instance_method('splice') do |method|
    method.define_argument('start')
    method.define_argument('count')
    method.define_argument('replacement')
  end
end

##
# Constant: Rubinius::MissingMethod
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::MissingMethod') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Executable'))

  klass.define_method('__class_init__')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('call') do |method|
    method.define_argument('called_object')
    method.define_argument('called_method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('receiver')
    method.define_argument('method')
  end

  klass.define_instance_method('method')

  klass.define_instance_method('parameters')

  klass.define_instance_method('receiver')
end

##
# Constant: Rubinius::NativeFunction
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::NativeFunction') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Executable'))

  klass.define_method('__class_init__')

  klass.define_instance_method('argument_types')

  klass.define_instance_method('argument_types=')

  klass.define_instance_method('return_type')

  klass.define_instance_method('return_type=')
end

##
# Constant: Rubinius::NativeMethod
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::NativeMethod') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Executable'))

  klass.define_method('__class_init__')

  klass.define_method('load_entry_point') do |method|
    method.define_argument('library')
    method.define_argument('name')
    method.define_argument('ptr')
  end

  klass.define_method('load_extension') do |method|
    method.define_argument('library')
    method.define_argument('extension_name')
  end

  klass.define_instance_method('active_path')

  klass.define_instance_method('arity')

  klass.define_instance_method('defined_line')

  klass.define_instance_method('file')

  klass.define_instance_method('first_line')

  klass.define_instance_method('line_from_ip') do |method|
    method.define_argument('i')
  end

  klass.define_instance_method('lines')

  klass.define_instance_method('literals')

  klass.define_instance_method('name')
end

##
# Constant: Rubinius::OS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::OS') do |klass|
end

##
# Constant: Rubinius::OS_ARGV
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::OS_ARGV') do |klass|
end

##
# Constant: Rubinius::OS_STARTUP_DIR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::OS_STARTUP_DIR') do |klass|
end

##
# Constant: Rubinius::ObjectBoundsExceededError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::ObjectBoundsExceededError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::VMException'))
end

##
# Constant: Rubinius::Options
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Options') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('add') do |method|
    method.define_argument('short')
    method.define_argument('long')
    method.define_argument('arg')
    method.define_argument('description')
    method.define_argument('block')
  end

  klass.define_instance_method('banner')

  klass.define_instance_method('banner=')

  klass.define_instance_method('config')

  klass.define_instance_method('config=')

  klass.define_instance_method('doc') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('help') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('left_align')

  klass.define_instance_method('match?') do |method|
    method.define_argument('opt')
  end

  klass.define_instance_method('on') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('on_extra') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('option_align')

  klass.define_instance_method('options')

  klass.define_instance_method('options=')

  klass.define_instance_method('parse') do |method|
    method.define_optional_argument('argv')
  end

  klass.define_instance_method('process') do |method|
    method.define_argument('argv')
    method.define_argument('entry')
    method.define_argument('opt')
    method.define_argument('arg')
  end

  klass.define_instance_method('split') do |method|
    method.define_argument('str')
    method.define_argument('n')
  end

  klass.define_instance_method('start_parsing')

  klass.define_instance_method('stop_parsing')

  klass.define_instance_method('to_s')

  klass.define_instance_method('version') do |method|
    method.define_argument('version')
    method.define_block_argument('block')
  end

  klass.define_instance_method('width')

  klass.define_instance_method('width=')
end

##
# Constant: Rubinius::Options::Option
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Options::Option') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('arg')

  klass.define_instance_method('arg?')

  klass.define_instance_method('block')

  klass.define_instance_method('description')

  klass.define_instance_method('long')

  klass.define_instance_method('match?') do |method|
    method.define_argument('opt')
  end

  klass.define_instance_method('optional?')

  klass.define_instance_method('short')
end

##
# Constant: Rubinius::Options::OptionError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Options::OptionError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Exception'))
end

##
# Constant: Rubinius::Options::ParseError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Options::ParseError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Exception'))
end

##
# Constant: Rubinius::PARSER_EXT_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::PARSER_EXT_PATH') do |klass|
end

##
# Constant: Rubinius::PARSER_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::PARSER_PATH') do |klass|
end

##
# Constant: Rubinius::PATH_MAX
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::PATH_MAX') do |klass|
end

##
# Constant: Rubinius::PREFIX_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::PREFIX_PATH') do |klass|
end

##
# Constant: Rubinius::RUBY_LIB_VERSION
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::RUBY_LIB_VERSION') do |klass|
end

##
# Constant: Rubinius::Randomizer
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Randomizer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('generate_seed')

  klass.define_instance_method('initialize')

  klass.define_instance_method('random') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('random_float')

  klass.define_instance_method('random_integer') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('random_range') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('seed')

  klass.define_instance_method('seed=') do |method|
    method.define_argument('new_seed')
  end

  klass.define_instance_method('set_seed') do |method|
    method.define_argument('new_seed')
  end

  klass.define_instance_method('swap_seed') do |method|
    method.define_argument('new_seed')
  end
end

##
# Constant: Rubinius::SITE_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::SITE_PATH') do |klass|
end

##
# Constant: Rubinius::SIZEOF_INT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::SIZEOF_INT') do |klass|
end

##
# Constant: Rubinius::SIZEOF_LONG
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::SIZEOF_LONG') do |klass|
end

##
# Constant: Rubinius::SIZEOF_SHORT
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::SIZEOF_SHORT') do |klass|
end

##
# Constant: Rubinius::Signature
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Signature') do |klass|
end

##
# Constant: Rubinius::Spawn
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Spawn') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('adjust_argv') do |method|
    method.define_argument('first')
    method.define_rest_argument('args')
  end

  klass.define_method('adjust_env') do |method|
    method.define_argument('env')
  end

  klass.define_method('adjust_options') do |method|
    method.define_argument('options')
  end

  klass.define_method('adjust_redirect_value') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_method('default_file_reopen_info') do |method|
    method.define_argument('fd')
    method.define_argument('file')
  end

  klass.define_method('exec') do |method|
    method.define_argument('env')
    method.define_argument('prog')
    method.define_argument('argv')
    method.define_argument('redirects')
    method.define_argument('options')
  end

  klass.define_method('extract_arguments') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('fd_to_io') do |method|
    method.define_argument('object')
  end

  klass.define_method('setup_options') do |method|
    method.define_argument('options')
  end

  klass.define_method('setup_redirects') do |method|
    method.define_argument('redirects')
  end
end

##
# Constant: Rubinius::Spawn::OFLAGS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Spawn::OFLAGS') do |klass|
end

##
# Constant: Rubinius::Splitter
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Splitter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('split') do |method|
    method.define_argument('string')
    method.define_argument('pattern')
    method.define_argument('limit')
  end

  klass.define_method('split_characters') do |method|
    method.define_argument('string')
    method.define_argument('pattern')
    method.define_argument('limit')
    method.define_argument('tail_empty')
  end

  klass.define_method('split_on_string') do |method|
    method.define_argument('string')
    method.define_argument('pattern')
  end
end

##
# Constant: Rubinius::Sprinter
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('cache')

  klass.define_method('get') do |method|
    method.define_argument('format')
  end

  klass.define_instance_method('as_int') do |method|
    method.define_argument('int')
  end

  klass.define_instance_method('compute_plus') do |method|
    method.define_argument('int')
  end

  klass.define_instance_method('compute_space') do |method|
    method.define_argument('int')
  end

  klass.define_instance_method('debug_print')

  klass.define_instance_method('digit_expand_precision') do |method|
    method.define_argument('int')
    method.define_argument('precision')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('format')
  end

  klass.define_instance_method('space_expand') do |method|
    method.define_argument('str')
    method.define_argument('width')
  end

  klass.define_instance_method('space_expand_integer') do |method|
    method.define_argument('int')
    method.define_argument('width')
  end

  klass.define_instance_method('space_expand_integer_left') do |method|
    method.define_argument('int')
    method.define_argument('width')
  end

  klass.define_instance_method('space_expand_leader') do |method|
    method.define_argument('int')
    method.define_argument('width')
  end

  klass.define_instance_method('space_expand_leader_left') do |method|
    method.define_argument('int')
    method.define_argument('width')
  end

  klass.define_instance_method('space_expand_left') do |method|
    method.define_argument('str')
    method.define_argument('width')
  end

  klass.define_instance_method('zero_expand_integer') do |method|
    method.define_argument('int')
    method.define_argument('width')
  end

  klass.define_instance_method('zero_expand_leader') do |method|
    method.define_argument('int')
    method.define_argument('width')
  end

  klass.define_instance_method('zero_two_expand_integer') do |method|
    method.define_argument('int')
  end
end

##
# Constant: Rubinius::Sprinter::Builder
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('append_literal') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('append_str')

  klass.define_instance_method('build')

  klass.define_instance_method('encode_result')

  klass.define_instance_method('force_type') do |method|
    method.define_argument('klass')
    method.define_optional_argument('method')
  end

  klass.define_instance_method('if_false')

  klass.define_instance_method('if_true')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('code')
    method.define_argument('format')
    method.define_argument('g')
  end

  klass.define_instance_method('invert')

  klass.define_instance_method('is_negative')

  klass.define_instance_method('justify') do |method|
    method.define_argument('direction')
    method.define_optional_argument('may_be_negative')
  end

  klass.define_instance_method('meta_op_minus')

  klass.define_instance_method('next_index') do |method|
    method.define_optional_argument('specified')
  end

  klass.define_instance_method('parse')

  klass.define_instance_method('push_Fixnum')

  klass.define_instance_method('push_Hash')

  klass.define_instance_method('push_Kernel')

  klass.define_instance_method('push_String')

  klass.define_instance_method('raise_ArgumentError') do |method|
    method.define_argument('msg')
  end

  klass.define_instance_method('try_type') do |method|
    method.define_argument('klass')
    method.define_argument('method')
  end
end

##
# Constant: Rubinius::Sprinter::Builder::Atom
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::Atom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('b')
    method.define_argument('g')
    method.define_argument('format_code')
    method.define_argument('flags')
    method.define_optional_argument('name')
  end

  klass.define_instance_method('justify_width') do |method|
    method.define_optional_argument('adjust')
  end

  klass.define_instance_method('leader?')

  klass.define_instance_method('positive_sign')

  klass.define_instance_method('precision?')

  klass.define_instance_method('prepend_prefix')

  klass.define_instance_method('push_format_string')

  klass.define_instance_method('push_precision')

  klass.define_instance_method('push_precision_value')

  klass.define_instance_method('push_value')

  klass.define_instance_method('push_width') do |method|
    method.define_optional_argument('adjust')
  end

  klass.define_instance_method('push_width_value')

  klass.define_instance_method('set_precision') do |method|
    method.define_argument('full')
    method.define_argument('ref')
    method.define_argument('static')
  end

  klass.define_instance_method('set_value') do |method|
    method.define_argument('ref')
  end

  klass.define_instance_method('set_width') do |method|
    method.define_argument('full')
    method.define_argument('ref')
    method.define_argument('static')
  end

  klass.define_instance_method('width?')

  klass.define_instance_method('width_static')

  klass.define_instance_method('zero_pad') do |method|
    method.define_optional_argument('pad')
    method.define_block_argument('readjust')
  end

  klass.define_instance_method('zero_pad?')
end

##
# Constant: Rubinius::Sprinter::Builder::AtomMap
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::AtomMap') do |klass|
end

##
# Constant: Rubinius::Sprinter::Builder::CharAtom
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::CharAtom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Sprinter::Builder::Atom'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode')
end

##
# Constant: Rubinius::Sprinter::Builder::ExtIntegerAtom
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::ExtIntegerAtom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Sprinter::Builder::Atom'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode')

  klass.define_instance_method('format_negative_int') do |method|
    method.define_argument('radix')
  end
end

##
# Constant: Rubinius::Sprinter::Builder::ExtIntegerAtomU
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::ExtIntegerAtomU') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Sprinter::Builder::ExtIntegerAtom'))

  klass.define_method('__class_init__')

  klass.define_instance_method('format_negative_int') do |method|
    method.define_argument('radix')
  end
end

##
# Constant: Rubinius::Sprinter::Builder::FloatAtom
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::FloatAtom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Sprinter::Builder::Atom'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode')
end

##
# Constant: Rubinius::Sprinter::Builder::InspectAtom
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::InspectAtom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Sprinter::Builder::StringAtom'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode')
end

##
# Constant: Rubinius::Sprinter::Builder::IntegerAtom
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::IntegerAtom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Sprinter::Builder::Atom'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode')
end

##
# Constant: Rubinius::Sprinter::Builder::LiteralAtom
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::LiteralAtom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Sprinter::Builder::Atom'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode')

  klass.define_instance_method('set_value') do |method|
    method.define_argument('ref')
  end
end

##
# Constant: Rubinius::Sprinter::Builder::PREFIX
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::PREFIX') do |klass|
end

##
# Constant: Rubinius::Sprinter::Builder::RADIX
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::RADIX') do |klass|
end

##
# Constant: Rubinius::Sprinter::Builder::RE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::RE') do |klass|
end

##
# Constant: Rubinius::Sprinter::Builder::StringAtom
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Sprinter::Builder::StringAtom') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::Sprinter::Builder::Atom'))

  klass.define_method('__class_init__')

  klass.define_instance_method('bytecode')

  klass.define_instance_method('string_justify')
end

##
# Constant: Rubinius::Stats
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Stats') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rubinius::Stats::Printer
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Stats::Printer') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('columns') do |method|
    method.define_rest_argument('columns')
  end

  klass.define_instance_method('heading') do |method|
    method.define_argument('leader')
  end

  klass.define_instance_method('headings') do |method|
    method.define_rest_argument('headings')
  end

  klass.define_instance_method('separator') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('statistics') do |method|
    method.define_argument('metric')
    method.define_argument('data')
    method.define_optional_argument('meth')
  end

  klass.define_instance_method('string') do |method|
    method.define_argument('metric')
    method.define_argument('string')
  end

  klass.define_instance_method('value') do |method|
    method.define_argument('metric')
    method.define_argument('value')
    method.define_optional_argument('meth')
  end
end

##
# Constant: Rubinius::Stats::Units
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Stats::Units') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('auto_bytes') do |method|
    method.define_argument('bytes')
  end

  klass.define_instance_method('auto_time') do |method|
    method.define_argument('time')
  end

  klass.define_instance_method('comma') do |method|
    method.define_argument('number')
    method.define_optional_argument('digits')
  end

  klass.define_instance_method('msec') do |method|
    method.define_argument('ns')
  end

  klass.define_instance_method('percentage') do |method|
    method.define_argument('part')
    method.define_argument('whole')
    method.define_optional_argument('digits')
    method.define_optional_argument('percent')
  end

  klass.define_instance_method('sec') do |method|
    method.define_argument('ns')
  end

  klass.define_instance_method('usec') do |method|
    method.define_argument('ns')
  end
end

##
# Constant: Rubinius::Stats::Units::KBYTES
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Stats::Units::KBYTES') do |klass|
end

##
# Constant: Rubinius::Stats::Units::MSEC_PER_NS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Stats::Units::MSEC_PER_NS') do |klass|
end

##
# Constant: Rubinius::Stats::Units::SEC_PER_NS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Stats::Units::SEC_PER_NS') do |klass|
end

##
# Constant: Rubinius::Stats::Units::USEC_PER_NS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Stats::Units::USEC_PER_NS') do |klass|
end

##
# Constant: Rubinius::TERMINAL_WIDTH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::TERMINAL_WIDTH') do |klass|
end

##
# Constant: Rubinius::ThreadState
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::ThreadState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

##
# Constant: Rubinius::ThrownValue
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::ThrownValue') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('available?') do |method|
    method.define_argument('obj')
  end

  klass.define_method('register') do |method|
    method.define_argument('obj')
  end
end

##
# Constant: Rubinius::Thunk
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Thunk') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('new') do |method|
    method.define_argument('value')
  end
end

##
# Constant: Rubinius::Tooling
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Tooling') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('active?')

  klass.define_method('available?')

  klass.define_method('disable')

  klass.define_method('enable')

  klass.define_method('load') do |method|
    method.define_argument('str')
  end

  klass.define_method('raw_load') do |method|
    method.define_argument('str')
  end
end

##
# Constant: Rubinius::Tuple
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Tuple') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('__class_init__')

  klass.define_method('_load') do |method|
    method.define_argument('str')
  end

  klass.define_method('allocate')

  klass.define_method('new') do |method|
    method.define_argument('cnt')
  end

  klass.define_method('pattern') do |method|
    method.define_argument('size')
    method.define_argument('obj')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('tup')
  end

  klass.define_instance_method('===') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('idx')
    method.define_argument('val')
  end

  klass.define_instance_method('_dump') do |method|
    method.define_argument('depth')
  end

  klass.define_instance_method('at') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('copy_from') do |method|
    method.define_argument('other')
    method.define_argument('start')
    method.define_argument('length')
    method.define_argument('dest')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('start')
    method.define_argument('length')
    method.define_argument('object')
  end

  klass.define_instance_method('delete_at_index') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('dup')

  klass.define_instance_method('each')

  klass.define_instance_method('empty?')

  klass.define_instance_method('fields')

  klass.define_instance_method('first')

  klass.define_instance_method('insert_at_index') do |method|
    method.define_argument('index')
    method.define_argument('value')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('join') do |method|
    method.define_argument('sep')
    method.define_optional_argument('meth')
  end

  klass.define_instance_method('join_upto') do |method|
    method.define_argument('sep')
    method.define_argument('count')
    method.define_optional_argument('meth')
  end

  klass.define_instance_method('last')

  klass.define_instance_method('length')

  klass.define_instance_method('put') do |method|
    method.define_argument('idx')
    method.define_argument('val')
  end

  klass.define_instance_method('reverse!') do |method|
    method.define_argument('start')
    method.define_argument('total')
  end

  klass.define_instance_method('shift')

  klass.define_instance_method('size')

  klass.define_instance_method('swap') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_s')
end

##
# Constant: Rubinius::Tuple::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Tuple::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Rubinius::Type
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Type') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('ascii_compatible_encoding') do |method|
    method.define_argument('string')
  end

  klass.define_method('binary_string') do |method|
    method.define_argument('string')
  end

  klass.define_method('check_convert_type') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
    method.define_argument('meth')
  end

  klass.define_method('check_null_safe') do |method|
    method.define_argument('string')
  end

  klass.define_method('coerce_to') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
    method.define_argument('meth')
  end

  klass.define_method('coerce_to_array') do |method|
    method.define_argument('obj')
  end

  klass.define_method('coerce_to_binding') do |method|
    method.define_argument('obj')
  end

  klass.define_method('coerce_to_comparison') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('coerce_to_constant_name') do |method|
    method.define_argument('name')
  end

  klass.define_method('coerce_to_encoding') do |method|
    method.define_argument('obj')
  end

  klass.define_method('coerce_to_exact_num') do |method|
    method.define_argument('obj')
  end

  klass.define_method('coerce_to_float') do |method|
    method.define_argument('obj')
    method.define_optional_argument('strict')
    method.define_optional_argument('must_be_numeric')
  end

  klass.define_method('coerce_to_path') do |method|
    method.define_argument('obj')
  end

  klass.define_method('coerce_to_pid') do |method|
    method.define_argument('obj')
  end

  klass.define_method('coerce_to_regexp') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('quote')
  end

  klass.define_method('coerce_to_symbol') do |method|
    method.define_argument('obj')
  end

  klass.define_method('coerce_to_utc_offset') do |method|
    method.define_argument('offset')
  end

  klass.define_method('compatible_encoding') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('convert_to_name') do |method|
    method.define_argument('sym')
  end

  klass.define_method('convert_to_names') do |method|
    method.define_argument('list')
  end

  klass.define_method('each_ancestor') do |method|
    method.define_argument('mod')
  end

  klass.define_method('encode_string') do |method|
    method.define_argument('string')
    method.define_argument('enc')
  end

  klass.define_method('execute_check_convert_type') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
    method.define_argument('meth')
  end

  klass.define_method('execute_coerce_to') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
    method.define_argument('meth')
  end

  klass.define_method('execute_try_convert') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
    method.define_argument('meth')
  end

  klass.define_method('external_string') do |method|
    method.define_argument('string')
  end

  klass.define_method('infect') do |method|
    method.define_argument('host')
    method.define_argument('source')
  end

  klass.define_method('ivar_validate') do |method|
    method.define_argument('name')
  end

  klass.define_method('module_inspect') do |method|
    method.define_argument('mod')
  end

  klass.define_method('module_name') do |method|
    method.define_argument('mod')
  end

  klass.define_method('object_class') do |method|
    method.define_argument('obj')
  end

  klass.define_method('object_encoding') do |method|
    method.define_argument('obj')
  end

  klass.define_method('object_equal') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('object_initialize_clone') do |method|
    method.define_argument('obj')
    method.define_argument('copy')
  end

  klass.define_method('object_initialize_dup') do |method|
    method.define_argument('obj')
    method.define_argument('copy')
  end

  klass.define_method('object_kind_of?') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
  end

  klass.define_method('object_respond_to?') do |method|
    method.define_argument('obj')
    method.define_argument('name')
  end

  klass.define_method('object_singleton_class') do |method|
    method.define_argument('obj')
  end

  klass.define_method('set_module_name') do |method|
    method.define_argument('mod')
    method.define_argument('name')
    method.define_argument('under')
  end

  klass.define_method('singleton_class_object') do |method|
    method.define_argument('mod')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
    method.define_argument('meth')
  end

  klass.define_method('try_convert_to_encoding') do |method|
    method.define_argument('obj')
  end
end

##
# Constant: Rubinius::Unsafe
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::Unsafe') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('set_class') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
  end
end

##
# Constant: Rubinius::VENDOR
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::VENDOR') do |klass|
end

##
# Constant: Rubinius::VENDOR_PATH
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::VENDOR_PATH') do |klass|
end

##
# Constant: Rubinius::VERSION
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::VERSION') do |klass|
end

##
# Constant: Rubinius::VM
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::VM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('__jit_info__')

  klass.define_method('backtrace') do |method|
    method.define_argument('frames_to_skip')
    method.define_optional_argument('include_vars')
  end

  klass.define_method('coerce_to_array') do |method|
    method.define_argument('object')
  end

  klass.define_method('dump_heap') do |method|
    method.define_argument('path')
  end

  klass.define_method('jit_info')

  klass.define_method('load_library') do |method|
    method.define_argument('path')
    method.define_argument('name')
  end

  klass.define_method('perform_hook') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_argument('arg')
    method.define_argument('ret')
  end

  klass.define_method('reset_method_cache') do |method|
    method.define_argument('sym')
  end

  klass.define_method('show_backtrace')

  klass.define_method('stats')

  klass.define_method('write_error') do |method|
    method.define_argument('str')
  end
end

##
# Constant: Rubinius::VM::JITInfo
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::VM::JITInfo') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('accessors_inlined')

  klass.define_instance_method('bytes_per_method')

  klass.define_instance_method('code_bytes')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('methods')
    method.define_argument('bytes')
    method.define_argument('nanoseconds')
    method.define_argument('accessors_inlined')
    method.define_argument('uncommons')
  end

  klass.define_instance_method('jitted_methods')

  klass.define_instance_method('milliseconds')

  klass.define_instance_method('nanoseconds')

  klass.define_instance_method('seconds')

  klass.define_instance_method('uncommons')
end

##
# Constant: Rubinius::VMException
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::VMException') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Exception'))
end

##
# Constant: Rubinius::VariableScope
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::VariableScope') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('current')

  klass.define_method('of_sender')

  klass.define_method('synthesize') do |method|
    method.define_argument('method')
    method.define_argument('module_')
    method.define_argument('parent')
    method.define_argument('self_')
    method.define_argument('block')
    method.define_argument('locals')
  end

  klass.define_instance_method('block')

  klass.define_instance_method('dynamic_locals')

  klass.define_instance_method('eval_local_defined?') do |method|
    method.define_argument('name')
    method.define_optional_argument('search')
  end

  klass.define_instance_method('exitted?')

  klass.define_instance_method('for_script?')

  klass.define_instance_method('get_eval_local') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('has_dynamic_locals?')

  klass.define_instance_method('inspect')

  klass.define_instance_method('local_defined?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('local_layout')

  klass.define_instance_method('locals')

  klass.define_instance_method('method')

  klass.define_instance_method('method_visibility')

  klass.define_instance_method('method_visibility=')

  klass.define_instance_method('module')

  klass.define_instance_method('parent')

  klass.define_instance_method('self')

  klass.define_instance_method('self=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('set_eval_local') do |method|
    method.define_argument('name')
    method.define_argument('val')
  end

  klass.define_instance_method('set_local') do |method|
    method.define_argument('slot')
    method.define_argument('obj')
  end

  klass.define_instance_method('super_method_defined?')
end

##
# Constant: Rubinius::WORDSIZE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rubinius::WORDSIZE') do |klass|
end