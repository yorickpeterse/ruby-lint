require 'spec_helper'

describe RubyLint::FileScanner do
  before :all do
    @rails_dir = fixture_path('file_scanner/rails')
    @lib_dir   = fixture_path('file_scanner/lib')
  end

  example 'raise when a non enumerable argument is given' do
    lambda { RubyLint::FileScanner.new(10) }.should raise_error(TypeError)
  end

  example 'set the default directories' do
    scanner = RubyLint::FileScanner.new

    scanner.directories.empty?.should == false
  end

  example 'do not include non existing directories' do
    app     = File.join(Dir.pwd, 'app')
    scanner = RubyLint::FileScanner.new

    scanner.directories.include?(app).should == false
  end

  example 'finding a class' do
    scanner = RubyLint::FileScanner.new([@lib_dir])
    paths   = scanner.scan('Example::User')

    paths.should == [fixture_path('file_scanner/lib/example/user.rb')]
  end

  example 'finding a class using dashes for the directory names' do
    scanner = RubyLint::FileScanner.new([@lib_dir])
    paths   = scanner.scan('TestDashes::Foo')

    paths.should == [fixture_path('file_scanner/lib/test-dashes/foo.rb')]
  end

  example 'finding a class using a Rails structure' do
    scanner = RubyLint::FileScanner.new([@rails_dir])
    paths   = scanner.scan('User')

    paths.should == [
      fixture_path('file_scanner/rails/app/models/user.rb'),
      fixture_path('file_scanner/rails/app/models/example/user.rb')
    ]
  end

  example 'finding a namespaced class using a Rails structure' do
    scanner = RubyLint::FileScanner.new([@rails_dir])
    paths   = scanner.scan('Example::User')

    paths.should == [
      fixture_path('file_scanner/rails/app/models/example/user.rb')
    ]
  end

  example 'ignoring directories' do
    scanner = RubyLint::FileScanner.new([@lib_dir], [@lib_dir])

    scanner.scan('Example::User').empty?.should == true
  end

  example 'do not scan when there are no directories' do
    scanner = RubyLint::FileScanner.new([])

    scanner.should_not receive(:glob_ruby_files)

    scanner.scan('Foo')
  end
end
