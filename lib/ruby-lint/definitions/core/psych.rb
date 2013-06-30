##
# Constant: Psych
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('add_builtin_type') do |method|
    method.define_argument('type_tag')
    method.define_block_argument('block')
  end

  klass.define_method('add_domain_type') do |method|
    method.define_argument('domain')
    method.define_argument('type_tag')
    method.define_block_argument('block')
  end

  klass.define_method('add_private_type') do |method|
    method.define_argument('type_tag')
    method.define_block_argument('block')
  end

  klass.define_method('add_ruby_type') do |method|
    method.define_argument('type_tag')
    method.define_block_argument('block')
  end

  klass.define_method('add_tag') do |method|
    method.define_argument('tag')
    method.define_argument('klass')
  end

  klass.define_method('detect_implicit') do |method|
    method.define_argument('thing')
  end

  klass.define_method('domain_types')

  klass.define_method('domain_types=')

  klass.define_method('dump') do |method|
    method.define_argument('o')
    method.define_optional_argument('io')
    method.define_optional_argument('options')
  end

  klass.define_method('dump_stream') do |method|
    method.define_rest_argument('objects')
  end

  klass.define_method('dump_tags')

  klass.define_method('dump_tags=')

  klass.define_method('libyaml_version')

  klass.define_method('load') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('filename')
  end

  klass.define_method('load_documents') do |method|
    method.define_argument('yaml')
    method.define_block_argument('block')
  end

  klass.define_method('load_file') do |method|
    method.define_argument('filename')
  end

  klass.define_method('load_stream') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('filename')
  end

  klass.define_method('load_tags')

  klass.define_method('load_tags=')

  klass.define_method('object_maker') do |method|
    method.define_argument('klass')
    method.define_argument('hash')
  end

  klass.define_method('parse') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('filename')
  end

  klass.define_method('parse_file') do |method|
    method.define_argument('filename')
  end

  klass.define_method('parse_stream') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('filename')
    method.define_block_argument('block')
  end

  klass.define_method('parser')

  klass.define_method('quick_emit') do |method|
    method.define_argument('thing')
    method.define_optional_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_method('read_type_class') do |method|
    method.define_argument('type')
    method.define_argument('reference')
  end

  klass.define_method('remove_type') do |method|
    method.define_argument('type_tag')
  end

  klass.define_method('tagurize') do |method|
    method.define_argument('thing')
  end

  klass.define_method('to_json') do |method|
    method.define_argument('o')
  end
end

##
# Constant: Psych::BadAlias
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::BadAlias') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Exception'))
end

##
# Constant: Psych::Coder
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Coder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('k')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('k')
    method.define_argument('v')
  end

  klass.define_instance_method('add') do |method|
    method.define_argument('k')
    method.define_argument('v')
  end

  klass.define_instance_method('implicit')

  klass.define_instance_method('implicit=')

  klass.define_instance_method('map') do |method|
    method.define_optional_argument('tag')
    method.define_optional_argument('style')
  end

  klass.define_instance_method('map=') do |method|
    method.define_argument('map')
  end

  klass.define_instance_method('object')

  klass.define_instance_method('object=')

  klass.define_instance_method('represent_map') do |method|
    method.define_argument('tag')
    method.define_argument('map')
  end

  klass.define_instance_method('represent_object') do |method|
    method.define_argument('tag')
    method.define_argument('obj')
  end

  klass.define_instance_method('represent_scalar') do |method|
    method.define_argument('tag')
    method.define_argument('value')
  end

  klass.define_instance_method('represent_seq') do |method|
    method.define_argument('tag')
    method.define_argument('list')
  end

  klass.define_instance_method('scalar') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('scalar=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('seq')

  klass.define_instance_method('seq=') do |method|
    method.define_argument('list')
  end

  klass.define_instance_method('style')

  klass.define_instance_method('style=')

  klass.define_instance_method('tag')

  klass.define_instance_method('tag=')

  klass.define_instance_method('type')
end

##
# Constant: Psych::DEPRECATED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::DEPRECATED') do |klass|
end

##
# Constant: Psych::DeprecatedMethods
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::DeprecatedMethods') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('taguri')

  klass.define_instance_method('taguri=')

  klass.define_instance_method('to_yaml_style')

  klass.define_instance_method('to_yaml_style=')
end

##
# Constant: Psych::ENGINE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::ENGINE') do |klass|
end

##
# Constant: Psych::Emitter
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Emitter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Handler'))

  klass.define_method('allocate')

  klass.define_instance_method('alias')

  klass.define_instance_method('canonical')

  klass.define_instance_method('canonical=')

  klass.define_instance_method('end_document')

  klass.define_instance_method('end_mapping')

  klass.define_instance_method('end_sequence')

  klass.define_instance_method('end_stream')

  klass.define_instance_method('indentation')

  klass.define_instance_method('indentation=')

  klass.define_instance_method('initialize')

  klass.define_instance_method('line_width')

  klass.define_instance_method('line_width=')

  klass.define_instance_method('scalar')

  klass.define_instance_method('start_document')

  klass.define_instance_method('start_mapping')

  klass.define_instance_method('start_sequence')

  klass.define_instance_method('start_stream')
end

##
# Constant: Psych::Exception
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Exception') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('RuntimeError'))
end

##
# Constant: Psych::Handler
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Handler') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('alias') do |method|
    method.define_argument('anchor')
  end

  klass.define_instance_method('empty')

  klass.define_instance_method('end_document') do |method|
    method.define_argument('implicit')
  end

  klass.define_instance_method('end_mapping')

  klass.define_instance_method('end_sequence')

  klass.define_instance_method('end_stream')

  klass.define_instance_method('scalar') do |method|
    method.define_argument('value')
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('plain')
    method.define_argument('quoted')
    method.define_argument('style')
  end

  klass.define_instance_method('start_document') do |method|
    method.define_argument('version')
    method.define_argument('tag_directives')
    method.define_argument('implicit')
  end

  klass.define_instance_method('start_mapping') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_sequence') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_stream') do |method|
    method.define_argument('encoding')
  end

  klass.define_instance_method('streaming?')
end

##
# Constant: Psych::Handlers
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Handlers') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Psych::Handlers::DocumentStream
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Handlers::DocumentStream') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::TreeBuilder'))

  klass.define_method('__class_init__')

  klass.define_instance_method('end_document') do |method|
    method.define_optional_argument('implicit_end')
  end

  klass.define_instance_method('start_document') do |method|
    method.define_argument('version')
    method.define_argument('tag_directives')
    method.define_argument('implicit')
  end
end

##
# Constant: Psych::JSON
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::JSON') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Psych::JSON::RubyEvents
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::JSON::RubyEvents') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('visit_DateTime') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_String') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Symbol') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Time') do |method|
    method.define_argument('o')
  end
end

##
# Constant: Psych::JSON::Stream
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::JSON::Stream') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Visitors::JSONTree'))

  klass.define_method('__class_init__')
end

##
# Constant: Psych::JSON::Stream::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::JSON::Stream::DISPATCH') do |klass|
end

##
# Constant: Psych::JSON::Stream::Emitter
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::JSON::Stream::Emitter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Stream::Emitter'))

  klass.define_method('__class_init__')
end

##
# Constant: Psych::JSON::TreeBuilder
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::JSON::TreeBuilder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::TreeBuilder'))

  klass.define_method('__class_init__')
end

##
# Constant: Psych::JSON::YAMLEvents
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::JSON::YAMLEvents') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('end_document') do |method|
    method.define_optional_argument('implicit_end')
  end

  klass.define_instance_method('scalar') do |method|
    method.define_argument('value')
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('plain')
    method.define_argument('quoted')
    method.define_argument('style')
  end

  klass.define_instance_method('start_document') do |method|
    method.define_argument('version')
    method.define_argument('tag_directives')
    method.define_argument('implicit')
  end

  klass.define_instance_method('start_mapping') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_sequence') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end
end

##
# Constant: Psych::LIBYAML_VERSION
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::LIBYAML_VERSION') do |klass|
end

##
# Constant: Psych::Nodes
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Psych::Nodes::Alias
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Alias') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Nodes::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('anchor')

  klass.define_instance_method('anchor=')
end

##
# Constant: Psych::Nodes::Alias::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Alias::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Nodes::Document
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Document') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Nodes::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('implicit')

  klass.define_instance_method('implicit=')

  klass.define_instance_method('implicit_end')

  klass.define_instance_method('implicit_end=')

  klass.define_instance_method('root')

  klass.define_instance_method('tag_directives')

  klass.define_instance_method('tag_directives=')

  klass.define_instance_method('version')

  klass.define_instance_method('version=')
end

##
# Constant: Psych::Nodes::Document::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Document::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Nodes::Mapping
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Mapping') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Nodes::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('anchor')

  klass.define_instance_method('anchor=')

  klass.define_instance_method('implicit')

  klass.define_instance_method('implicit=')

  klass.define_instance_method('style')

  klass.define_instance_method('style=')

  klass.define_instance_method('tag')

  klass.define_instance_method('tag=')
end

##
# Constant: Psych::Nodes::Mapping::BLOCK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Mapping::BLOCK') do |klass|
end

##
# Constant: Psych::Nodes::Mapping::FLOW
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Mapping::FLOW') do |klass|
end

##
# Constant: Psych::Nodes::Mapping::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Mapping::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Nodes::Node
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Node') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('children')

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('tag')

  klass.define_instance_method('to_ruby')

  klass.define_instance_method('to_yaml') do |method|
    method.define_optional_argument('io')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('transform')

  klass.define_instance_method('yaml') do |method|
    method.define_optional_argument('io')
    method.define_optional_argument('options')
  end
end

##
# Constant: Psych::Nodes::Node::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Node::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Nodes::Scalar
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Scalar') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Nodes::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('anchor')

  klass.define_instance_method('anchor=')

  klass.define_instance_method('plain')

  klass.define_instance_method('plain=')

  klass.define_instance_method('quoted')

  klass.define_instance_method('quoted=')

  klass.define_instance_method('style')

  klass.define_instance_method('style=')

  klass.define_instance_method('tag')

  klass.define_instance_method('tag=')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Psych::Nodes::Scalar::DOUBLE_QUOTED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Scalar::DOUBLE_QUOTED') do |klass|
end

##
# Constant: Psych::Nodes::Scalar::FOLDED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Scalar::FOLDED') do |klass|
end

##
# Constant: Psych::Nodes::Scalar::LITERAL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Scalar::LITERAL') do |klass|
end

##
# Constant: Psych::Nodes::Scalar::PLAIN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Scalar::PLAIN') do |klass|
end

##
# Constant: Psych::Nodes::Scalar::SINGLE_QUOTED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Scalar::SINGLE_QUOTED') do |klass|
end

##
# Constant: Psych::Nodes::Scalar::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Scalar::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Nodes::Sequence
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Sequence') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Nodes::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('anchor')

  klass.define_instance_method('anchor=')

  klass.define_instance_method('implicit')

  klass.define_instance_method('implicit=')

  klass.define_instance_method('style')

  klass.define_instance_method('style=')

  klass.define_instance_method('tag')

  klass.define_instance_method('tag=')
end

##
# Constant: Psych::Nodes::Sequence::BLOCK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Sequence::BLOCK') do |klass|
end

##
# Constant: Psych::Nodes::Sequence::FLOW
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Sequence::FLOW') do |klass|
end

##
# Constant: Psych::Nodes::Sequence::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Sequence::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Nodes::Stream
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Stream') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Nodes::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('encoding')

  klass.define_instance_method('encoding=')
end

##
# Constant: Psych::Nodes::Stream::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Stream::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Nodes::Stream::UTF16BE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Stream::UTF16BE') do |klass|
end

##
# Constant: Psych::Nodes::Stream::UTF16LE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Stream::UTF16LE') do |klass|
end

##
# Constant: Psych::Nodes::Stream::UTF8
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Nodes::Stream::UTF8') do |klass|
end

##
# Constant: Psych::Omap
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Omap') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Hash'))
end

##
# Constant: Psych::Omap::Bucket
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Omap::Bucket') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
    method.define_argument('key_hash')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('key')
    method.define_argument('key_hash')
    method.define_argument('value')
    method.define_argument('state')
  end

  klass.define_instance_method('key')

  klass.define_instance_method('key=')

  klass.define_instance_method('key_hash')

  klass.define_instance_method('key_hash=')

  klass.define_instance_method('link')

  klass.define_instance_method('link=')

  klass.define_instance_method('next')

  klass.define_instance_method('next=')

  klass.define_instance_method('previous')

  klass.define_instance_method('previous=')

  klass.define_instance_method('remove')

  klass.define_instance_method('state')

  klass.define_instance_method('state=')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Psych::Omap::Entries
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Omap::Entries') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Omap::Iterator
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Omap::Iterator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('next') do |method|
    method.define_argument('item')
  end
end

##
# Constant: Psych::Omap::MAX_ENTRIES
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Omap::MAX_ENTRIES') do |klass|
end

##
# Constant: Psych::Omap::MIN_SIZE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Omap::MIN_SIZE') do |klass|
end

##
# Constant: Psych::Omap::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Omap::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Omap::State
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Omap::State') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('from') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('compare_by_identity')

  klass.define_instance_method('compare_by_identity?')

  klass.define_instance_method('head')

  klass.define_instance_method('head=')

  klass.define_instance_method('initialize')

  klass.define_instance_method('match?') do |method|
    method.define_argument('this_key')
    method.define_argument('this_hash')
    method.define_argument('other_key')
    method.define_argument('other_hash')
  end

  klass.define_instance_method('tail')

  klass.define_instance_method('tail=')
end

##
# Constant: Psych::Parser
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('external_encoding=')

  klass.define_instance_method('handler')

  klass.define_instance_method('handler=')

  klass.define_instance_method('mark')

  klass.define_instance_method('parse')
end

##
# Constant: Psych::Parser::Mark
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::Mark') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('#<Class:0x16848>'))
end

##
# Constant: Psych::Parser::Mark::Group
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::Mark::Group') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rubinius::FFI::Struct'))

  klass.define_method('__class_init__')

  klass.define_instance_method('gid')

  klass.define_instance_method('mem')

  klass.define_instance_method('name')

  klass.define_instance_method('passwd')
end

##
# Constant: Psych::Parser::Mark::Passwd
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::Mark::Passwd') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rubinius::FFI::Struct'))

  klass.define_method('__class_init__')

  klass.define_instance_method('dir')

  klass.define_instance_method('gecos')

  klass.define_instance_method('gid')

  klass.define_instance_method('name')

  klass.define_instance_method('passwd')

  klass.define_instance_method('shell')

  klass.define_instance_method('uid')
end

##
# Constant: Psych::Parser::Mark::STRUCT_ATTRS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::Mark::STRUCT_ATTRS') do |klass|
end

##
# Constant: Psych::Parser::Mark::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::Mark::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Parser::Mark::Tms
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::Mark::Tms') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Struct'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('__class_init__')

  klass.define_method('new') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cstime')

  klass.define_instance_method('cstime=')

  klass.define_instance_method('cutime')

  klass.define_instance_method('cutime=')

  klass.define_instance_method('stime')

  klass.define_instance_method('stime=')

  klass.define_instance_method('tstime')

  klass.define_instance_method('tstime=')

  klass.define_instance_method('tutime')

  klass.define_instance_method('tutime=')

  klass.define_instance_method('utime')

  klass.define_instance_method('utime=')
end

##
# Constant: Psych::Parser::UTF16BE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::UTF16BE') do |klass|
end

##
# Constant: Psych::Parser::UTF16LE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::UTF16LE') do |klass|
end

##
# Constant: Psych::Parser::UTF8
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Parser::UTF8') do |klass|
end

##
# Constant: Psych::PrivateType
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::PrivateType') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))
end

##
# Constant: Psych::ScalarScanner
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::ScalarScanner') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('parse_time') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('tokenize') do |method|
    method.define_argument('string')
  end
end

##
# Constant: Psych::ScalarScanner::FLOAT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::ScalarScanner::FLOAT') do |klass|
end

##
# Constant: Psych::ScalarScanner::TIME
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::ScalarScanner::TIME') do |klass|
end

##
# Constant: Psych::Set
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Set') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Hash'))
end

##
# Constant: Psych::Set::Bucket
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Set::Bucket') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
    method.define_argument('key_hash')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('key')
    method.define_argument('key_hash')
    method.define_argument('value')
    method.define_argument('state')
  end

  klass.define_instance_method('key')

  klass.define_instance_method('key=')

  klass.define_instance_method('key_hash')

  klass.define_instance_method('key_hash=')

  klass.define_instance_method('link')

  klass.define_instance_method('link=')

  klass.define_instance_method('next')

  klass.define_instance_method('next=')

  klass.define_instance_method('previous')

  klass.define_instance_method('previous=')

  klass.define_instance_method('remove')

  klass.define_instance_method('state')

  klass.define_instance_method('state=')

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

##
# Constant: Psych::Set::Entries
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Set::Entries') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Set::Iterator
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Set::Iterator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('next') do |method|
    method.define_argument('item')
  end
end

##
# Constant: Psych::Set::MAX_ENTRIES
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Set::MAX_ENTRIES') do |klass|
end

##
# Constant: Psych::Set::MIN_SIZE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Set::MIN_SIZE') do |klass|
end

##
# Constant: Psych::Set::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Set::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Psych::Set::State
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Set::State') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('from') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('compare_by_identity')

  klass.define_instance_method('compare_by_identity?')

  klass.define_instance_method('head')

  klass.define_instance_method('head=')

  klass.define_instance_method('initialize')

  klass.define_instance_method('match?') do |method|
    method.define_argument('this_key')
    method.define_argument('this_hash')
    method.define_argument('other_key')
    method.define_argument('other_hash')
  end

  klass.define_instance_method('tail')

  klass.define_instance_method('tail=')
end

##
# Constant: Psych::Stream
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Stream') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Visitors::YAMLTree'))

  klass.define_method('__class_init__')
end

##
# Constant: Psych::Stream::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Stream::DISPATCH') do |klass|
end

##
# Constant: Psych::Stream::Emitter
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Stream::Emitter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Emitter'))

  klass.define_method('__class_init__')

  klass.define_instance_method('end_document') do |method|
    method.define_optional_argument('implicit_end')
  end

  klass.define_instance_method('streaming?')
end

##
# Constant: Psych::Streaming
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Streaming') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('start') do |method|
    method.define_optional_argument('encoding')
  end
end

##
# Constant: Psych::SyntaxError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::SyntaxError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('SyntaxError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('column')

  klass.define_instance_method('context')

  klass.define_instance_method('file')

  klass.define_instance_method('line')

  klass.define_instance_method('offset')

  klass.define_instance_method('problem')
end

##
# Constant: Psych::TreeBuilder
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::TreeBuilder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Handler'))

  klass.define_method('__class_init__')

  klass.define_instance_method('alias') do |method|
    method.define_argument('anchor')
  end

  klass.define_instance_method('end_document') do |method|
    method.define_optional_argument('implicit_end')
  end

  klass.define_instance_method('end_mapping')

  klass.define_instance_method('end_sequence')

  klass.define_instance_method('end_stream')

  klass.define_instance_method('root')

  klass.define_instance_method('scalar') do |method|
    method.define_argument('value')
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('plain')
    method.define_argument('quoted')
    method.define_argument('style')
  end

  klass.define_instance_method('start_document') do |method|
    method.define_argument('version')
    method.define_argument('tag_directives')
    method.define_argument('implicit')
  end

  klass.define_instance_method('start_mapping') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_sequence') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_stream') do |method|
    method.define_argument('encoding')
  end
end

##
# Constant: Psych::VERSION
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::VERSION') do |klass|
end

##
# Constant: Psych::Visitors
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Psych::Visitors::DepthFirst
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::DepthFirst') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Visitors::Visitor'))

  klass.define_method('__class_init__')
end

##
# Constant: Psych::Visitors::DepthFirst::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::DepthFirst::DISPATCH') do |klass|
end

##
# Constant: Psych::Visitors::Emitter
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::Emitter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Visitors::Visitor'))

  klass.define_method('__class_init__')

  klass.define_instance_method('visit_Psych_Nodes_Alias') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Document') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Mapping') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Scalar') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Sequence') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Stream') do |method|
    method.define_argument('o')
  end
end

##
# Constant: Psych::Visitors::Emitter::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::Emitter::DISPATCH') do |klass|
end

##
# Constant: Psych::Visitors::JSONTree
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::JSONTree') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Visitors::YAMLTree'))

  klass.define_method('__class_init__')

  klass.define_instance_method('accept') do |method|
    method.define_argument('target')
  end
end

##
# Constant: Psych::Visitors::JSONTree::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::JSONTree::DISPATCH') do |klass|
end

##
# Constant: Psych::Visitors::ToRuby
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::ToRuby') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Visitors::Visitor'))

  klass.define_method('__class_init__')

  klass.define_instance_method('accept') do |method|
    method.define_argument('target')
  end

  klass.define_instance_method('visit_Psych_Nodes_Alias') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Document') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Mapping') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Scalar') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Sequence') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Nodes_Stream') do |method|
    method.define_argument('o')
  end
end

##
# Constant: Psych::Visitors::ToRuby::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::ToRuby::DISPATCH') do |klass|
end

##
# Constant: Psych::Visitors::Visitor
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::Visitor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('accept') do |method|
    method.define_argument('target')
  end
end

##
# Constant: Psych::Visitors::Visitor::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::Visitor::DISPATCH') do |klass|
end

##
# Constant: Psych::Visitors::YAMLTree
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::YAMLTree') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Psych::Visitors::Visitor'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<<') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('accept') do |method|
    method.define_argument('target')
  end

  klass.define_instance_method('finish')

  klass.define_instance_method('finished')

  klass.define_instance_method('finished?')

  klass.define_instance_method('push') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('start') do |method|
    method.define_optional_argument('encoding')
  end

  klass.define_instance_method('started')

  klass.define_instance_method('started?')

  klass.define_instance_method('tree')

  klass.define_instance_method('visit_Array') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_BigDecimal') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Class') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Complex') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Date') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_DateTime') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Exception') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_FalseClass') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Float') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Hash') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Integer') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Module') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_NilClass') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Object') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Omap') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Psych_Set') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Range') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Rational') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Regexp') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_String') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Struct') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Symbol') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Time') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_TrueClass') do |method|
    method.define_argument('o')
  end
end

##
# Constant: Psych::Visitors::YAMLTree::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Psych::Visitors::YAMLTree::DISPATCH') do |klass|
end