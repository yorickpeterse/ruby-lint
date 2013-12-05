require 'spec_helper'

describe RubyLint::MethodCall::AssignMember do
  before do
    @vm   = RubyLint::VirtualMachine.new
    @node = s(:send,
      s(:const, nil, :ENV), :[]=, s(:str, 'FOO'), s(:str, 'bar')
    )

    @method_call = RubyLint::MethodCall::AssignMember.new(@node, @vm)
    @arguments   = [
      ruby_object.new(:type => :str, :value => 'FOO'),
      ruby_object.new(:type => :str, :value => 'bar')
    ]

    @context = ruby_object.new(:type => :hash)
    @context.deep_freeze
  end

  example 'do not update members of frozen definitions' do
    @method_call.evaluate(@arguments, @context)

    @context.has_definition?(:member, 'FOO').should == false
  end
end
