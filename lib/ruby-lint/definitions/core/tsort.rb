# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('TSort') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize')

  klass.define_instance_method('each_strongly_connected_component')

  klass.define_instance_method('each_strongly_connected_component_from') do |method|
    method.define_argument('node')
    method.define_optional_argument('id_map')
    method.define_optional_argument('stack')
  end

  klass.define_instance_method('strongly_connected_components')

  klass.define_instance_method('tsort')

  klass.define_instance_method('tsort_each')

  klass.define_instance_method('tsort_each_child') do |method|
    method.define_argument('node')
  end

  klass.define_instance_method('tsort_each_node')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'TSort').deep_freeze
