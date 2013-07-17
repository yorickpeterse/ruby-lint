require 'spec_helper'
require_relative '../../lib/ruby-lint/inspector'

describe RubyLint::Inspector do
  let(:inspector) { RubyLint::Inspector.new(Encoding) }

  example 'return a list of child constants' do
    inspector.inspect_constants.include?('Encoding::BINARY').should == true
  end

  example 'ignore a given constant' do
    ins       = inspector
    constants = ins.inspect_constants(ins.constant, ['Encoding::BINARY'])

    constants.include?('Encoding::BINARY').should == false
  end

  example 'return the methods' do
    names = inspector.inspect_methods.map(&:name)

    names.include?(:find).should == true
  end

  example 'return the instance methods' do
    names = inspector.inspect_instance_methods.map(&:name)

    names.include?(:to_s).should == true
  end

  example 'return the superclass' do
    inspector.inspect_superclass.should == Object
  end
end
