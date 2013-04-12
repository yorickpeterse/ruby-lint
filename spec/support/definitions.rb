##
# @return [Class]
#
def ruby_object
  return RubyLint::Definition::RubyObject
end

##
# @return [Class]
#
def ruby_method
  return RubyLint::Definition::RubyMethod
end

##
# @param [#to_s] type
# @return [RubyLint::Definition::RubyMethod]
#
def method_with_argument(object, type)
  return object.define_method('example') do |example|
    example.send("define_#{type}", 'number')
  end
end
