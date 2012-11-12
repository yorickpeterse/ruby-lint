# README

**Rlint is currently alpha quality, expect things to break and change without
notice. Patches and bug reports are more than welcome.**

Rlint (short name for Ruby Lint) is a linter and static code analysis tool for
Ruby inspired by similar tools such as JSHint. It makes it possible for
developers to detect errors such as undefined (or unused) variables and the
use of non existing methods.

## Requirements

* Ruby 1.9 or newer
* Ripper (comes bundled with Ruby 1.9)

## Installation

Rlint can be installed by running the following command:

    $ gem install ruby-lint

Please note that there already is an existing gem called "rlint". This Gem is
**not** the same, it just happens to be a similar project (one that seems
abandoned) that uses the same name.

## Compatibility Issues

Currently Rlint can only be executed using MRI 1.9.3, it does not run on MRI
1.8.x due to the lack of Ripper. It also does not yet run without errors on
MRI 2.0 as the addition of named variables changes the Ripper output, something
Rlint doesn't properly handle at the moment.

For the time being Rlint will stick to using Ripper which means it's also
limited to MRI 1.9.x/2.0.x. I've been looking around for alternatives so that
Rlint can be run on Jruby/Rubinius in the future but so far I haven't really
found a worthy alternative. For now I'd rather focus on making Rlint work on
one implementation instead of a number of different ones.

Also keep in mind that while in theory Rlint should run on MRI 1.8.x I couldn't
get the "ripper" gem to install properly, thus I'm unable to confirm this. Feel
free to try it out but I won't bother with MRI 1.8.x myself if it requires more
than a few minutes worth of work.

## License

All source code in this repository is licensed under the MIT license unless
specified otherwise. A copy of this license can be found in the file "LICENSE"
in the root directory of this repository.
