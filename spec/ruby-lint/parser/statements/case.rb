require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing case statements' do
  should 'parse a case statement' do
    code = <<-CODE
case number
when 10, 20
  '10 or 20'
when 30
  '30'
else
  'something else'
end
    CODE

    parse(code).should == s(
      :case,
      s(:method, 'number', s(:arguments), nil, nil),
      [
        s(
          :when,
          [s(:integer, '10'), s(:integer, '20')],
          [s(:string, '10 or 20')]
        ),
        s(
          :when,
          [s(:integer, '30')],
          [s(:string, '30')]
        )
      ],
      s(:else, s(:string, 'something else'))
    )
  end
end
