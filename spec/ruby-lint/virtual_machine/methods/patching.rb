require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  should 'be able to patch global definitions' do
    after do
      RubyLint::VirtualMachine.global_scope.lookup(:const, 'String') \
        .definitions[:method] \
        .delete('foobar')
    end

    should 'add a class method to the String class' do
      code = <<-CODE
class String
  def self.foobar
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'String') \
        .has_definition?(:method, 'foobar') \
        .should == true
    end
  end
end
