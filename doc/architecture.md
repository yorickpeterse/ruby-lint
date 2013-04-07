# @title Architecture
# Architecture

The process of analysing Ruby source code is broken up into several separate
steps. The basic flow of this process looks like the following:

![ruby-lint flow](images/flow.png)

Most third-party code will only deal with the last 3 steps.

This chapter takes a brief look at the various parts that make up ruby-lint.
Some of these parts are discussed more in depth in which case a link to these
chapters can be found below.

## The Parser

The {RubyLint::Parser parser} converts raw Ruby source code into an AST. The
AST is built up by nodes formatted as S expressions. A node for a simple String
would look like the following:

    (string "hello")

Each node is an instance of {RubyLint::Node}. Each node can contain a number of
child nodes. If one were to format the above S expression as an Array you'd get
the following:

    [:string, ["hello"]]

For more information see the documentation of {RubyLint::Node} and the
corresponding tests found in `spec/ruby-lint/parser/`.

Currently the parser is based on Ripper, a library that comes with MRI 1.9 and
newer. Because of this ruby-lint will be unable to support Rubinius and Jruby
for the time being. In the future this parser will be replaced with something
that runs on all the common Ruby implementations.

## Definitions Builder

The {RubyLint::DefinitionsBuilder definitions builder} iterates over the AST
and evaluates it so that variables can be created, methods can be defined and
so on. Once finished a single {RubyLint::Definition::RubyObject} definition is
created that contains all the Ruby data of a block of Ruby code.

One can see the definitions builder as a very basic virtual machine.

## Analysis

This is where the real work start. The analysis step consists out of various
Ruby classes of which each performs its own type of analysis. For example,
{RubyLint::Analyze::UndefinedMethods} checks for the use of undefined methods.

## Reports

Reports are used for storing a set of {RubyLint::Report::Entry} instances that
contain information about a block of Ruby code that is being analyzed. Each
entry contains some location information (line and column number for example)
as well as a message (e.g. an error message).

## Presenters

Presenters are classes tasked with the job of presenting a report. Currently
ruby-lint ships with a presenter that outputs a report in plain text as well as
one that outputs a report in JSON.
