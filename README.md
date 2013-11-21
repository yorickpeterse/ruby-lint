# ruby-lint

[![Build Status](https://travis-ci.org/YorickPeterse/ruby-lint.png?branch=master)](https://travis-ci.org/YorickPeterse/ruby-lint)
[![Coverage Status](https://coveralls.io/repos/YorickPeterse/ruby-lint/badge.png?branch=master)](https://coveralls.io/r/YorickPeterse/ruby-lint)
[![Code Climate](https://codeclimate.com/github/YorickPeterse/ruby-lint.png)](https://codeclimate.com/github/YorickPeterse/ruby-lint)

ruby-lint is a linter and static code analysis tool for Ruby. It is inspired by
similar tools such as jshint, flake8 and similar tools. ruby-lint primarily
focuses on logic related errors such as the use of non existing variables
instead of focusing on semantics (e.g. the amount of characters per line).

## Requirements

* a Ruby implementation running 1.9 or newer
* a Unix based Operating System

The following Ruby implementations/versions are officially supported:

* Ruby 1.9.3 or 2.0 and newer
* Rubinius head running in 1.9 mode
* Jruby head running in 1.9 mode

Ruby implementations running a 1.8 based version of Ruby are not supported.

## Installation

The easiest way to install ruby-lint is to install it from RubyGems:

    gem install ruby-lint

If you prefer to install (and build) ruby-lint from the source code you can do
so as following:

    git clone git://github.com/YorickPeterse/ruby-lint.git
    cd ruby-lint
    bundle install # you can also install the dependencies manually
    rake build

This builds a new version of the Gem and saves it in the pkg/ directory.

## Security

As a basic form of security ruby-lint provides a set of SHA512 checksums for
every Gem release. These checksums can be found in the `checksum/` directory.
Although these checksums do not prevent malicious users from tampering with a
built Gem they can be used for basic integrity verification purposes.

The checksum of a file can be checked using the `sha512sum` command. For
example:

    $ sha512sum pkg/ruby-lint-0.9.1.gem
    10a51f27c455e5743fff7fefe29512cff20116b805bec148e09d4bade1727e3beab7f7f9ee97b020d290773edcb7bd1685858ccad0bbd1a35cc0282c00c760c6  pkg/ruby-lint-0.9.1.gem

In the past Gems were also signed using PGP, this is no longer the case.

## Usage

Using ruby-lint from the CLI is very easy. To analyze a set of files
you run the following:

    ruby-lint file1.rb file2.rb

For more information specify either the `-h` or `--help` option.

## Example

Given the following code:

    class Person
      def initialize(name)
        # oops, not setting @name
      end

      def greet
        return "Hello, #{@name}"
      end
    end

    user     = Person.new('Alice')
    greeting = user.greet

    user.greet(:foo)

Analysing this file using ruby-lint (with the default settings) would result in
the following output:

    test.rb: error: line 7, column 21: undefined instance variable @name
    test.rb: warning: line 12, column 0: unused local variable greeting
    test.rb: error: line 14, column 0: wrong number of arguments (expected 0 but got 1)

## Documentation

* {file:contributing Contributing}
* {file:architecture Architecture}
* {file:code\_analysis Code Analysis}
* {file:configuration Configuration}

## License

All source code in this repository is licensed under the MIT license unless
specified otherwise. A copy of this license can be found in the file "LICENSE"
in the root directory of this repository.
