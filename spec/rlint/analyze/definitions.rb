require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Analyze::Definitions' do
  it 'Add errors for undefined variables' do
    code = <<-CODE
number = 10

puts numberx
puts @number
puts @@number
puts $number
puts NUMBER

# The code below should not add any errors.
numberx  = 10
@number  = 10
@@number = 10
$number  = 10
NUMBER   = 10

puts numberx
puts @number
puts @@number
puts $number
puts NUMBER
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 5

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined local variable or method numberx'
    errors[0][:line].should    == 3
    errors[0][:column].should  == 5

    errors[1][:message].should == 'undefined instance variable @number'
    errors[1][:line].should    == 4
    errors[1][:column].should  == 5

    errors[2][:message].should == 'undefined class variable @@number'
    errors[2][:line].should    == 5
    errors[2][:column].should  == 5

    errors[3][:message].should == 'undefined global variable $number'
    errors[3][:line].should    == 6
    errors[3][:column].should  == 5

    errors[4][:message].should == 'undefined constant NUMBER'
    errors[4][:line].should    == 7
    errors[4][:column].should  == 5
  end
end
