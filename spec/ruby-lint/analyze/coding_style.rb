require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Analyze::CodingStyle' do
  it 'Check the casing of method names and variables' do
    code = <<-CODE
def getNumber(theNumber = 10)
  valid_number = theNumber

  return theNumber
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::CodingStyle)
    iterator.run(tokens)

    messages = report.messages[:info]
    message  = 'the use of camelCase for names is discouraged'

    messages.class.should  == Array
    messages.length.should == 4

    messages[0][:message].should == message
    messages[0][:line].should    == 1
    messages[0][:column].should  == 4

    messages[1][:message].should == message
    messages[1][:line].should    == 1
    messages[1][:column].should  == 14

    messages[2][:message].should == message
    messages[2][:line].should    == 2
    messages[2][:column].should  == 17

    messages[3][:message].should == message
    messages[3][:line].should    == 4
    messages[3][:column].should  == 9
  end

  it 'Check the length of method and variable names' do
    code = <<-CODE
def this_method_name_is_rather_long_dont_you_think
  this_variable_name_is_also_rather_long = 10
end

this_variable_is_fine = 10

THIS_CONSTANT_NAME_IS_WAY_TOO_LONG = 10
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::CodingStyle)
    iterator.run(tokens)

    messages = report.messages[:info]
    message  = "method and variable names should not be longer than " \
      "#{RubyLint::Analyze::CodingStyle::MAXIMUM_NAME_LENGTH} characters"

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
    tokens   = RubyLint::Parser.new('@@number = 10').parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::CodingStyle)
    iterator.run(tokens)

    info = report.messages[:info][0]

    info[:message].should == 'the use of class variables is discouraged'
    info[:line].should    == 1
    info[:column].should  == 0
  end

  it 'Check for the use of parenthesis in various statements' do
    code = <<-CODE
if ( name == 'Ruby' )
  puts 'This is some weird code'
elsif ( name == 'Python')
  puts 10
end

while ( true )
  puts 'Infinite loop'
end

case ( number )
when ( 10 )
  puts 'The number is 10'
else
  puts 'Something else'
end

until ( number == 10 )
  number += 1
end

unless ( foobar )
  something
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::CodingStyle)
    iterator.run(tokens)

    report.messages[:info].class.should  == Array
    report.messages[:info].length.should == 7

    message = 'the use of parenthesis for statements is discouraged'

    [1, 3, 7, 11, 12, 18, 22].each_with_index do |line, index|
      report.messages[:info][index][:message].should == message
      report.messages[:info][index][:line].should    == line
      report.messages[:info][index][:column].should  == 0
    end
  end

  it 'Check for correct names for predicate methods' do
    code = <<-CODE
def invalid_name
  return true
end

def valid_name?
  return true
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::CodingStyle)
    iterator.run(tokens)

    message = 'predicate methods should end with a question mark'

    report.messages[:info].class.should  == Array
    report.messages[:info].length.should == 1

    report.messages[:info][0][:message].should == message
    report.messages[:info][0][:line].should    == 1
    report.messages[:info][0][:column].should  == 4
  end

  it 'Check for recommending alternative method names' do
    code = <<-CODE
[].collect { |a| }
[].map { |a| }
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::CodingStyle)
    iterator.run(tokens)

    message = 'it is recommended to use the method "map" instead of "collect"'

    report.messages[:info].class.should  == Array
    report.messages[:info].length.should == 1

    report.messages[:info][0][:message].should == message
    report.messages[:info][0][:line].should    == 1
    report.messages[:info][0][:column].should  == 3
  end

  it 'Add warnings when modifying core Ruby constants' do
    code = <<-CODE
class String
  def custom_method

  end
end

def String.class_method

end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::CodingStyle)
    iterator.run(tokens)

    report.messages[:warning].class.should  == Array
    report.messages[:warning].length.should == 2

    warnings = report.messages[:warning]

    warnings[0][:message].should == 'modification of a core Ruby constant'
    warnings[0][:line].should    == 1
    warnings[0][:column].should  == 6

    warnings[1][:message].should == 'modification of a core Ruby constant'
    warnings[1][:line].should    == 7
    warnings[1][:column].should  == 4
  end
end
