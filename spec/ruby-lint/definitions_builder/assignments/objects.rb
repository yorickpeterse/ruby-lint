require File.expand_path('../../../../helper', __FILE__)

describe 'Building variable definitions' do
  describe 'object member assignments' do
    should 'process a single member assignment' do
      code = <<-CODE
  person      = OpenStruct.new
  person.name = 'Matz'
      CODE

      defs   = build_definitions(code)
      person = defs.lookup(:local_variable, 'person')
      name   = person.lookup(:member, 'name')

      name.is_a?(RubyLint::Definition::RubyObject).should == true

      name.name.should == 'name'
      name.type.should == :identifier

      name.value.type.should  == :string
      name.value.value.should == 'Matz'
    end
  end
end
