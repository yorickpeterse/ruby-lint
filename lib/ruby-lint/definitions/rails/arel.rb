##
# Constant: Arel
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel') do |klass|

  klass.define_method('sql') do |method|
    method.define_argument('raw_sql')
  end

  klass.define_method('star')
end

##
# Constant: Arel::AliasPredication
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::AliasPredication') do |klass|

  klass.define_instance_method('as') do |method|
    method.define_argument('other')
  end
end

##
# Constant: Arel::Attribute
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Attribute') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('#<Class:0x1d4dc>'))

  klass.define_instance_method('lower')
end

##
# Constant: Arel::Attributes
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Attributes') do |klass|

  klass.define_method('for') do |method|
    method.define_argument('column')
  end
end

##
# Constant: Arel::Compatibility
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Compatibility') do |klass|
end

##
# Constant: Arel::Crud
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Crud') do |klass|

  klass.define_instance_method('compile_delete')

  klass.define_instance_method('compile_insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('compile_update') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('create_insert')

  klass.define_instance_method('delete')

  klass.define_instance_method('insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('values')
  end
end

##
# Constant: Arel::DeleteManager
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::DeleteManager') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Arel::TreeManager'))

  klass.define_instance_method('from') do |method|
    method.define_argument('relation')
  end

  klass.define_instance_method('wheres=') do |method|
    method.define_argument('list')
  end
end

##
# Constant: Arel::Expression
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Expression') do |klass|
end

##
# Constant: Arel::Expressions
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Expressions') do |klass|

  klass.define_instance_method('average')

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('distinct')
  end

  klass.define_instance_method('extract') do |method|
    method.define_argument('field')
  end

  klass.define_instance_method('maximum')

  klass.define_instance_method('minimum')

  klass.define_instance_method('sum')
end

##
# Constant: Arel::FactoryMethods
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::FactoryMethods') do |klass|

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end
end

##
# Constant: Arel::InnerJoin
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::InnerJoin') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Arel::Nodes::Join'))
end

##
# Constant: Arel::InsertManager
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::InsertManager') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Arel::TreeManager'))

  klass.define_instance_method('columns')

  klass.define_instance_method('create_values') do |method|
    method.define_argument('values')
    method.define_argument('columns')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('fields')
  end

  klass.define_instance_method('into') do |method|
    method.define_argument('table')
  end

  klass.define_instance_method('values=') do |method|
    method.define_argument('val')
  end
end

##
# Constant: Arel::Math
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Math') do |klass|

  klass.define_instance_method('*') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('/') do |method|
    method.define_argument('other')
  end
end

##
# Constant: Arel::Node
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Node') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('and') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('not')

  klass.define_instance_method('or') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('to_sql') do |method|
    method.define_optional_argument('engine')
  end
end

##
# Constant: Arel::Nodes
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Nodes') do |klass|
end

##
# Constant: Arel::OrderPredications
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::OrderPredications') do |klass|

  klass.define_instance_method('asc')

  klass.define_instance_method('desc')
end

##
# Constant: Arel::OuterJoin
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::OuterJoin') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Arel::Nodes::Join'))
end

##
# Constant: Arel::Predications
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Predications') do |klass|

  klass.define_instance_method('does_not_match') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('does_not_match_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('does_not_match_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('eq') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('eq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('eq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gt') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('gt_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gt_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gteq') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('gteq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gteq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('in') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('in_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('in_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lt') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('lt_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lt_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lteq') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('lteq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lteq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('matches') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('matches_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('matches_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_eq') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('not_eq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_eq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_in') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('not_in_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_in_any') do |method|
    method.define_argument('others')
  end
end

##
# Constant: Arel::SelectManager
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::SelectManager') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Arel::TreeManager'))

  klass.define_instance_method('as') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('constraints')

  klass.define_instance_method('distinct') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('except') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('exists')

  klass.define_instance_method('from') do |method|
    method.define_argument('table')
  end

  klass.define_instance_method('froms')

  klass.define_instance_method('group') do |method|
    method.define_rest_argument('columns')
  end

  klass.define_instance_method('having') do |method|
    method.define_rest_argument('exprs')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('intersect') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('join') do |method|
    method.define_argument('relation')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('join_sources')

  klass.define_instance_method('join_sql')

  klass.define_instance_method('joins') do |method|
    method.define_argument('manager')
  end

  klass.define_instance_method('limit')

  klass.define_instance_method('limit=') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('lock') do |method|
    method.define_optional_argument('locking')
  end

  klass.define_instance_method('locked')

  klass.define_instance_method('minus') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('offset')

  klass.define_instance_method('offset=') do |method|
    method.define_argument('amount')
  end

  klass.define_instance_method('on') do |method|
    method.define_rest_argument('exprs')
  end

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('expr')
  end

  klass.define_instance_method('order_clauses')

  klass.define_instance_method('orders')

  klass.define_instance_method('project') do |method|
    method.define_rest_argument('projections')
  end

  klass.define_instance_method('projections')

  klass.define_instance_method('projections=') do |method|
    method.define_argument('projections')
  end

  klass.define_instance_method('skip') do |method|
    method.define_argument('amount')
  end

  klass.define_instance_method('source')

  klass.define_instance_method('take') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('taken')

  klass.define_instance_method('to_a')

  klass.define_instance_method('union') do |method|
    method.define_argument('operation')
    method.define_optional_argument('other')
  end

  klass.define_instance_method('where_clauses')

  klass.define_instance_method('where_sql')

  klass.define_instance_method('wheres')

  klass.define_instance_method('window') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('with') do |method|
    method.define_rest_argument('subqueries')
  end
end

##
# Constant: Arel::Sql
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Sql') do |klass|
end

##
# Constant: Arel::SqlLiteral
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::SqlLiteral') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Arel::Nodes::SqlLiteral'))
end

##
# Constant: Arel::Table
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Table') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('engine')

  klass.define_method('engine=')

  klass.define_method('table_cache') do |method|
    method.define_argument('engine')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('alias') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('aliases')

  klass.define_instance_method('aliases=')

  klass.define_instance_method('columns')

  klass.define_instance_method('engine')

  klass.define_instance_method('engine=')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('from') do |method|
    method.define_argument('table')
  end

  klass.define_instance_method('group') do |method|
    method.define_rest_argument('columns')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('having') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('insert_manager')

  klass.define_instance_method('join') do |method|
    method.define_argument('relation')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('joins') do |method|
    method.define_argument('manager')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('expr')
  end

  klass.define_instance_method('primary_key')

  klass.define_instance_method('project') do |method|
    method.define_rest_argument('things')
  end

  klass.define_instance_method('select_manager')

  klass.define_instance_method('skip') do |method|
    method.define_argument('amount')
  end

  klass.define_instance_method('table_alias')

  klass.define_instance_method('table_alias=')

  klass.define_instance_method('table_name')

  klass.define_instance_method('take') do |method|
    method.define_argument('amount')
  end

  klass.define_instance_method('where') do |method|
    method.define_argument('condition')
  end
end

##
# Constant: Arel::TreeManager
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::TreeManager') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('ast')

  klass.define_instance_method('engine')

  klass.define_instance_method('to_dot')

  klass.define_instance_method('to_sql')

  klass.define_instance_method('visitor')

  klass.define_instance_method('where') do |method|
    method.define_argument('expr')
  end
end

##
# Constant: Arel::UpdateManager
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::UpdateManager') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Arel::TreeManager'))

  klass.define_instance_method('key')

  klass.define_instance_method('key=') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('expr')
  end

  klass.define_instance_method('set') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('table') do |method|
    method.define_argument('table')
  end

  klass.define_instance_method('take') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('where') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('wheres=') do |method|
    method.define_argument('exprs')
  end
end

##
# Constant: Arel::VERSION
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::VERSION') do |klass|
end

##
# Constant: Arel::Visitors
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::Visitors') do |klass|

  klass.define_method('for') do |method|
    method.define_argument('engine')
  end

  klass.define_method('visitor_for') do |method|
    method.define_argument('engine')
  end
end

##
# Constant: Arel::WindowPredications
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Arel::WindowPredications') do |klass|

  klass.define_instance_method('over') do |method|
    method.define_optional_argument('expr')
  end
end