require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Analyze::CodingStyle' do
  it 'Check the casing of method names and variables' do
    code = <<-CODE
def getNumber(theNumber = 10)
  return theNumber
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::CodingStyle)
    iterator.iterate(tokens)

    messages = report.messages[:info]
    message  = 'the use of camelCase for names is discouraged'

    messages.class.should  == Array
    messages.length.should == 3

    messages[0][:message].should == message
    messages[0][:line].should    == 1
    messages[0][:column].should  == 4

    messages[1][:message].should == message
    messages[1][:line].should    == 1
    messages[1][:column].should  == 14

    messages[2][:message].should == message
    messages[2][:line].should    == 2
    messages[2][:column].should  == 9
  end

  it 'Check the length of method and variable names' do
    code = <<-CODE
def this_method_name_is_rather_long_dont_you_think
  this_variable_name_is_also_rather_long = 10
end

this_variable_is_fine = 10

THIS_CONSTANT_NAME_IS_WAY_TOO_LONG = 10
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::CodingStyle)
    iterator.iterate(tokens)

    messages = report.messages[:info]
    message  = "method and variable names should not be longer than " \
      "#{Rlint::Analyze::CodingStyle::MAXIMUM_NAME_LENGTH} characters"

    messages[0][:message].should == message
    messages[0][:line].should    == 1
    messages[0][:column].should  == 4

    messages[1][:message].should == message
    messages[1][:line].should    == 2
    messages[1][:column].should  == 2

    messages[2][:message].should == message
    messages[2][:line].should    == 7
    messages[2][:column].should  == 0
  end

  it 'Check for the use of class variables' do
    tokens   = Rlint::Parser.new('@@number = 10').parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::CodingStyle)
    iterator.iterate(tokens)

    info = report.messages[:info][0]

    info[:message].should == 'the use of class variables is discouraged'
    info[:line].should    == 1
    info[:column].should  == 0
  end

  it 'Check for the use of parenthesis in if statements' do
    code = <<-CODE
if ( name == 'Ruby' )
  puts 'This is some weird code'
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::CodingStyle)
    iterator.iterate(tokens)

    report.messages[:info].class.should  == Array
    report.messages[:info].length.should == 1

    info = report.messages[:info][0]

    info[:message].should == 'the use of parenthesis for statements ' \
      'is discouraged'

    info[:line].should   == 1
    info[:column].should == 1
  end
end
