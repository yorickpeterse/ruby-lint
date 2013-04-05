# ruby-lint

ruby-lint is a linter and static code analysis tool for Ruby. It is inspired by
similar tools such as jshint and flake8.

## Requirements

* Ruby (MRI) 1.9.3 or newer
* a Unix based Operating System

## Installation

The easiest way to install ruby-lint is to install it from RubyGems:

    $ gem install ruby-lint

Alternatively you can install it from a RubyGems mirror that I run (updated
daily and only mirrors a very small subset of RubyGems):

    $ gem install --source=http://rubygems.yorickpeterse.com/

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

## Compatibility

For the time being ruby-lint only runs on MRI 1.9 due to its dependency on
Ripper, a library that is not available on Rubinius, Jruby and other Ruby
implementations.

In the future I intend to move away from Ripper but when this happens depends
on when I can find something that suits my needs. Most existing solutions, such
as `ruby_parser` lack features that I require (such as storing column numbers
of AST nodes), are either unmaintained or severely limited in what they can do.

## Documentation

* {file:contributing Contributing}

## License

All source code in this repository is licensed under the MIT license unless
specified otherwise. A copy of this license can be found in the file "LICENSE"
in the root directory of this repository.

[rubygems-openpgp]: https://github.com/grant-olson/rubygems-openpgp
