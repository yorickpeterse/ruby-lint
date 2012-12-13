require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing case statements' do
  it 'Parse a case statement' do
    code = <<-CODE
case number
when 10, 20
  puts '10 or 20'
when 30
  puts '30'
else
  puts 'something else'
end
    CODE

    parse(code).should == s(
      :case,
      s(:method, 'number'),
      [
        s(
          :when,
          [s(:integer, '10'), s(:integer, '20')],
          [s(:method, 'puts', [s(:string, '10 or 20')])]
        ),
        s(
          :when,
          [s(:integer, '30')],
          [s(:method, 'puts', [s(:string, '30')])]
        )
      ],
      s(:else, s(:method, 'puts', [s(:string, 'something else')]))
    )
  end
end
