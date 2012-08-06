# README

Rlint is a linter and static code analysis tool for Ruby inspired by similar
tools such as JSHint. It makes it possible for developers to detect errors such
as undeclared (or unused) variables and the use of non existing constants.

Currently Rlint is in a very, very early stage of development. There's nothing
more than a half assed parser using Ripper and it will take a while for it to
truly become a proper linter.

## Requirements

* Ruby 1.9 or newer
* Ripper (comes bundled with Ruby 1.9)

## Installation

Once the Gem has been registered and pushed to Rubygems you should be able to
install it as following:

    $ gem install rlint

## License

All source code in this repository is licensed under the MIT license unless
specified otherwise. A copy of this license can be found in the file "LICENSE"
in the root directory of this repository.
