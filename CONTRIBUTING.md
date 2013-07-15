# Contributing

Those that wish to contribute to ruby-lint are more than welcome. However, to
make the lifes of both me and others easier there are a few things one should
keep in mind.

The basic set of guidelines is described at
<http://yorickpeterse.com/articles/contributing-to-my-code/>. The article looks
a bit daunting but most of what this article describes is already common
practise in Ruby land. In short:

* write tests
* write documentation using YARD (at the very least arguments and return values
  should be documented)
* wrap lines at 79 characters per line
* Git commits should have a <= 50 character summary, optionally followed by a
  blank line and a more in depth description of 79 characters per line.

These are the most important bits, the rest is all described in the above
article. If you have any questions or whatsoever don't hesitate to ask and
don't worry about making mistakes (e.g. missing some documentation), I'll help
wherever I can and won't slap you with a large trout.

## Legal

Legal wise there are two files to take into account:

* LICENSE
* doc/DCO.md

The LICENSE file contains a copy of the MIT license. All ruby-lint source code
and related files (basically whatever this repository and the resulting Gem
contains) are licensed under the MIT license unless specified otherwise.

The DCO contains a agreement for developers that basically specifies that they
agree with the license and that whatever they contribute is something they are
allowed to contribute. By contributing to ruby-lint you automatically agree
with this DCO so it's worth giving a read. The DCO is put in to place to ensure
that whenever somebody gets mad at me for using proprietary code contributed by
somebody else I have at least something to defend myself with. Lets just hope I
never have to.
