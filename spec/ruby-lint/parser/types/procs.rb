require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Lambdas' do
  should 'parse the dash rocket syntax' do
    parse('-> example { example }').should == s(
      :lambda,
      s(:arguments, s(:argument, s(:local_variable, 'example'))),
      s(:body, [s(:local_variable, 'example')])
    )
  end
end
