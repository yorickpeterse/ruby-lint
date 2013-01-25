require File.expand_path('../../../helper', __FILE__)

describe 'Count the reference amount of variables' do
  should 'count the amount of references for a variable' do
    code = <<-CODE
number = 10
number
number
    CODE

    defs = build_definitions(code)

    defs.lookup(:local_variable, 'number').reference_amount.should == 2
  end

  should 'count the amount of references for a constant path' do
    code = <<-CODE
module A; end
A::B = 10
A::B
A::B
    CODE

    defs = build_definitions(code)

    defs.lookup(:constant, 'A') \
      .lookup(:constant, 'B') \
      .reference_amount \
      .should == 2
  end
end
