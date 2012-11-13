require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Analyze::UnusedVariables' do
  it 'Add warnings for unused variables in the global scope' do
    code = <<-CODE
number   = 10
@number  = 10
@@number = 10
$number  = 10

number_2   = 10
@number_2  = 10
@@number_2 = 10
$number_2  = 10

puts number_2
puts @number_2
puts @@number_2
puts $number_2
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UnusedVariables)
    iterator.run(tokens)

    report.messages[:warning].class.should  == Array
    report.messages[:warning].length.should == 4

    warnings = report.messages[:warning]

    warnings[0][:message].should == 'assigned but unused local variable number'
    warnings[0][:line].should    == 1
    warnings[0][:column].should  == 0

    warnings[1][:message].should == 'assigned but unused instance ' \
      'variable @number'

    warnings[1][:line].should    == 2
    warnings[1][:column].should  == 0

    warnings[2][:message].should == 'assigned but unused class ' \
      'variable @@number'

    warnings[2][:line].should    == 3
    warnings[2][:column].should  == 0

    warnings[3][:message].should == 'assigned but unused global ' \
      'variable $number'

    warnings[3][:line].should    == 4
    warnings[3][:column].should  == 0
  end

  it 'Add warnings for unused variables in a method definition scope' do
    code = <<-CODE
def example
  number   = 10
  @number  = 10
  @@number = 10
  $number  = 10

  number_2   = 10
  @number_2  = 10
  @@number_2 = 10
  $number_2  = 10

  puts number_2
  puts @number_2
  puts @@number_2
  puts $number_2
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UnusedVariables)
    iterator.run(tokens)

    report.messages[:warning].class.should  == Array
    report.messages[:warning].length.should == 4

    warnings = report.messages[:warning]

    warnings[0][:message].should == 'assigned but unused local variable number'
    warnings[0][:line].should    == 2
    warnings[0][:column].should  == 2

    warnings[1][:message].should == 'assigned but unused instance ' \
      'variable @number'

    warnings[1][:line].should    == 3
    warnings[1][:column].should  == 2

    warnings[2][:message].should == 'assigned but unused class ' \
      'variable @@number'

    warnings[2][:line].should    == 4
    warnings[2][:column].should  == 2

    warnings[3][:message].should == 'assigned but unused global ' \
      'variable $number'

    warnings[3][:line].should    == 5
    warnings[3][:column].should  == 2
  end

  it 'Add warnings for unused variables in a class definition scope' do
    code = <<-CODE
class Example
  number   = 10
  @number  = 10
  @@number = 10
  $number  = 10

  number_2   = 10
  @number_2  = 10
  @@number_2 = 10
  $number_2  = 10

  puts number_2
  puts @number_2
  puts @@number_2
  puts $number_2
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UnusedVariables)
    iterator.run(tokens)

    report.messages[:warning].class.should  == Array
    report.messages[:warning].length.should == 4

    warnings = report.messages[:warning]

    warnings[0][:message].should == 'assigned but unused local variable number'
    warnings[0][:line].should    == 2
    warnings[0][:column].should  == 2

    warnings[1][:message].should == 'assigned but unused instance ' \
      'variable @number'

    warnings[1][:line].should    == 3
    warnings[1][:column].should  == 2

    warnings[2][:message].should == 'assigned but unused class ' \
      'variable @@number'

    warnings[2][:line].should    == 4
    warnings[2][:column].should  == 2

    warnings[3][:message].should == 'assigned but unused global ' \
      'variable $number'

    warnings[3][:line].should    == 5
    warnings[3][:column].should  == 2
  end

  it 'Add warnings for unused variables in a module definition scope' do
    code = <<-CODE
module Example
  number   = 10
  @number  = 10
  @@number = 10
  $number  = 10

  number_2   = 10
  @number_2  = 10
  @@number_2 = 10
  $number_2  = 10

  puts number_2
  puts @number_2
  puts @@number_2
  puts $number_2
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UnusedVariables)
    iterator.run(tokens)

    report.messages[:warning].class.should  == Array
    report.messages[:warning].length.should == 4

    warnings = report.messages[:warning]

    warnings[0][:message].should == 'assigned but unused local variable number'
    warnings[0][:line].should    == 2
    warnings[0][:column].should  == 2

    warnings[1][:message].should == 'assigned but unused instance ' \
      'variable @number'

    warnings[1][:line].should    == 3
    warnings[1][:column].should  == 2

    warnings[2][:message].should == 'assigned but unused class ' \
      'variable @@number'

    warnings[2][:line].should    == 4
    warnings[2][:column].should  == 2

    warnings[3][:message].should == 'assigned but unused global ' \
      'variable $number'

    warnings[3][:line].should    == 5
    warnings[3][:column].should  == 2
  end
end
