# ruby-lint

[![Build Status](https://travis-ci.org/YorickPeterse/ruby-lint.png?branch=master)](https://travis-ci.org/YorickPeterse/ruby-lint)
[![Coverage Status](https://coveralls.io/repos/YorickPeterse/ruby-lint/badge.png?branch=develop)](https://coveralls.io/r/YorickPeterse/ruby-lint)
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
* Jruby head running in 1.8 mode

Ruby implementations running a 1.8 based version of Ruby are not supported.

## Installation

The easiest way to install ruby-lint is to install it from RubyGems:

    $ gem install ruby-lint

If you prefer to install (and build) ruby-lint from the source code you can do
so as following:

    $ git clone git://github.com/YorickPeterse/ruby-lint.git
    $ cd ruby-lint
    $ bundle install # you can also install the dependencies manually
    $ rake gem

This builds a new version of the Gem and saves it in the pkg/ directory.

## Security

To ensure that people can't tamper with the ruby-lint Gem once it's being
distributed as a `.gem` file the Gem is signed using GNUPG (using the
[rubygems-openpgp][rubygems-openpgp] Gem). If you have this Gem installed it's
recommended that you install ruby-lint as following:

    $ gem install ruby-lint --verify --trust

Unless you have my GPG public key and have marked it as trusted this process
will fail. For signing Gems I use the public key **3649F444** registered to
"Yorick Peterse" using Email address <yorickpeterse@gmail.com>.

You can add this key by running the following command:

    $ gpg --recv-keys 3649F444

In case you don't use GPG but still want some form of verification you can use
the checksums that are located in the "checksum" directory. These checksums are
SHA512 checksums of entire Gem files and can be verified using the `sha512sum`
command.

## Usage

Using ruby-lint from the CLI is very easy. To analyze a set of files
you run the following:

    $ ruby-lint file1.rb file2.rb

For more information specify either the `-h` or `--help` option.

## Documentation

* {file:contributing Contributing}
* {file:architecture Architecture}
* {file:code\_analysis Code Analysis}
* {file:configuration Configuration}

## License

All source code in this repository is licensed under the MIT license unless
specified otherwise. A copy of this license can be found in the file "LICENSE"
in the root directory of this repository.

[rubygems-openpgp]: https://github.com/grant-olson/rubygems-openpgp
