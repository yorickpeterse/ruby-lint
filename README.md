# README

**RubyLint is currently alpha quality, expect things to break and change without
notice. Patches and bug reports are more than welcome.**

Ruby Lint is a linter and static code analysis tool for Ruby inspired by
similar tools such as JSHint. It makes it possible for developers to detect
errors such as undefined (or unused) variables and the use of non existing
methods.

## Requirements

* Ruby 1.9 or newer
* Ripper (comes bundled with Ruby 1.9)

## Installation

RubyLint can be installed by running the following command:

    $ gem install ruby-lint

Please note that there already is an existing gem called "rlint". This Gem is
**not** the same, it just happens to be a similar project (one that seems
abandoned) that uses the same name.

## Usage

RubyLint can be used in two different ways: using the CLI interface and by using
the Ruby code directly.

The CLI can be used using the command `ruby-lint`, see the output of `ruby-lint
--help` for more information on how to configure it and how to analyze Ruby
files.

The Ruby code itself takes a bit more effort but gives you more flexibility. In
the future you'll also be able to customize RubyLint using a Ruby configuration
files. In order to analyze Ruby code you'll need a few things:

* An instance of `RubyLint::Iterator`
* An instance of `RubyLint::Report`
* A formatter for the report
* A block of Ruby code
* A number of analyzer classes such as `RubyLint::Analyze::UndefinedVariables`

A short example is the following:

    require 'ruby-lint'

    code      = 'obviously your Ruby code goes in here'
    tokens    = RubyLint::Parser.new(code).parse
    report    = RubyLint::Report.new
    formatter = RubyLint::Formatter.new
    iterator  = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::MethodValidation)

    iterator.run(tokens)

    puts formatter.format(report)

## Design

RubyLint's design is broken up into 5 different parts:

* A parser that turns a block of Ruby code into an AST.
* A class that iterates over this AST and executes callback methods (aptly
  named `RubyLint::Iterator`).
* A set of callback classes that are used by an iterator. These callback
  classes perform the actual data analysis.
* A report for storing error messages, warnings and informal messages.
* A formatter that turns a report into something useful such as plain text or
  JSON.

The process of analyzing code basically looks like the following:

              +------+
              | Code |
              +------+
                 |
                 v
          +------------------+
          | RubyLint::Parser |
          +------------------+
                 |
                 v
         +--------------------+
         | RubyLint::Iterator |
         +--------------------+
                 |
                 v
     +------------------------------+
     | RubyLint::Callback instances |
     +------------------------------+
                 |
                 v
         +------------------+
         | RubyLint::Report |
         +------------------+
                 |
                 v
    +-------------------------------+
    | RubyLint::Formatter instances |
    +-------------------------------+
                 |
                 v
        +------------------+
        | Something useful |
        +------------------+

The advantage of this setup is that different tasks are decoupled (where
possible) and that it's fairly trivial to write custom formatters that spit out
JSON, HTML, XML or something else. It also makes things easier to maintain as
there's no single giant lump of code that does everything.

## Compatibility Issues

Currently RubyLint can only be executed using MRI 1.9.3, it does not run on MRI
1.8.x due to the lack of Ripper. It also does not yet run without errors on
MRI 2.0 as the addition of named variables changes the Ripper output, something
RubyLint doesn't properly handle at the moment.

For the time being RubyLint will stick to using Ripper which means it's also
limited to MRI 1.9.x/2.0.x. I've been looking around for alternatives so that
RubyLint can be run on Jruby/Rubinius in the future but so far I haven't really
found a worthy alternative. For now I'd rather focus on making RubyLint work on
one implementation instead of a number of different ones.

Also keep in mind that while in theory RubyLint should run on MRI 1.8.x I couldn't
get the "ripper" gem to install properly, thus I'm unable to confirm this. Feel
free to try it out but I won't bother with MRI 1.8.x myself if it requires more
than a few minutes worth of work.

## TODO

* Allow options to be set and libraries to be loaded using a configuration
  file (`./.rlint.rb` and `~/.rlint.rb`).
* Handle named parameters in Ruby 2.0 (and other potential differences).
* Validate the parameters passed to method calls where possible.
* Better/more up to date documentation.
* Testing, testing and more testing.

## License

All source code in this repository is licensed under the MIT license unless
specified otherwise. A copy of this license can be found in the file "LICENSE"
in the root directory of this repository.
