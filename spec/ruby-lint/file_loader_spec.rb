require 'spec_helper'

describe RubyLint::FileLoader do
  before :all do
    @rails_dir = fixture_path('file_scanner/rails')
    @lib_dir   = fixture_path('file_scanner/lib')
  end

  context 'rails projects' do
    it 'finds a class' do
      loader = RubyLint::FileLoader.new(:directories => [@rails_dir])
      ast    = parse('User')

      loader.iterate(ast)

      loader.nodes.empty?.should == false

      const = loader.nodes[1][0].children[0]

      const.file
        .should == fixture_path('file_scanner/rails/app/models/user.rb')
    end

    it 'finds a namespaced class' do
      loader = RubyLint::FileLoader.new(:directories => [@rails_dir])
      ast    = parse('Example::User')

      loader.iterate(ast)

      loader.nodes.empty?.should == false

      const = loader.nodes[1][0].children[0]

      const.file
        .should == fixture_path('file_scanner/rails/app/models/example/user.rb')
    end
  end

  context 'regular Ruby projects' do
    it 'finds a class' do
      loader = RubyLint::FileLoader.new(:directories => [@lib_dir])
      ast    = parse('Example::User')

      loader.iterate(ast)

      loader.nodes.empty?.should == false

      const = loader.nodes[0][0].children[0]

      const.file.should == fixture_path('file_scanner/lib/example/user.rb')
    end

    it 'recursively finds dependencies' do
      loader = RubyLint::FileLoader.new(:directories => [@lib_dir])
      ast    = parse('Example::Recursive::Source')

      loader.iterate(ast)

      nodes = loader.nodes.map do |pair|
        pair[0].children[0]
      end

      nodes.length.should == 2

      File.basename(nodes[0].file).should == 'target.rb'
      File.basename(nodes[1].file).should == 'source.rb'
    end
  end
end
