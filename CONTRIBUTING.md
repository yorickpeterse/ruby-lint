# Contributing

Everybody is more than welcome to contribute to ruby-lint, no matter how small
the change. To keep everything running smoothly there are a few guidelines that
one should follow. These are as following:

* When changing code make sure to write RSpec tests for the changes.
* Document code using YARD. At the very least the method arguments and return
  value(s) should be documented.
* Wrap lines at 79 characters per line.
* Git commits should have a <= 50 character summary, optionally followed by a
  blank line and a more in depth description of 79 characters per line.

## Editor Setup

Whatever editor you use doesn't matter as long as it can do two things:

* Use spaces for indentation.
* Hard wrap lines at 79 characters per line.

To make this process easier ruby-lint comes with an
[EditorConfig][editorconfig] configuration file. If your editor supports this
it will automatically apply the required settings for you.

## Hacking on ruby-lint

Assuming you have a local Git clone of ruby-lint, the first step should be to
install all the required Gems:

    bundle install

Next up, run the tests to make sure everything is working:

    rake
    rspec spec # also fine

For more information about the available tasks, run `rake -T`.

## Contact

In case you have any further questions or would like to receive feedback before
submitting a change, feel free to contact me. You can either open an issue,
send a tweet to [@yorickpeterse][twitter] or send an Email to
<yorickpeterse@gmail.com>.

## Legal

By contributing to ruby-lint you agree with both the Developer's Certificate of
origin, found in `doc/DCO.md` and the license, found in `LICENSE`. This applies
to all content in this repository unless stated otherwise.

[editorconfig]:http://editorconfig.org/
[twitter]: https://twitter.com/yorickpeterse
