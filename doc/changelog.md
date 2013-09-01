# @title Changelog
# Changelog

This document contains a short summary of the various releases of ruby-lint.
For a full list of commits included in each release see the corresponding Git
tags (named after the versions).

## 0.0.5 - 2013-09-01

Originally slated for August 1st I decided to push this release back one month
to buy myself some extra time to polish features, resolve more bugs and
procrastinate more. Besides numerous bug fixes and extra polish this release
contains two big new features that I'd like to highlight:

* support for parsing basic YARD tags
* loading of externally defined constants/files from the local file system

### YARD Support

[YARD][yard] provides a set of tags that can aid in documenting your code. For
example, `@param` is a tag used to document the type, name and description of a
method parameter. Since Ruby has no form of type hinting you're often left to
wonder what kind of objects a method can work with.

In version 0.0.5 support for two tags was added:

* `@param`
* `@return`

When ruby-lint finds methods documented using these tags it will use them to
pull in information about the parameter types and return values. This greatly
increases the accuracy of ruby-lint, given your code is documented. Consider
the following example:

    def multiply(value, multiplier)
      return value * value
    end

If ruby-lint were to process the above code it would have no idea what kind of
object `value` and `multiplier` are and thus wouldn't be able to much with the
above code. When documenting the above method with the mentioned YARD tags
ruby-lint *is* capable of doing this:

    ##
    # @param [Fixnum] value
    # @param [Fixnum] multiplier
    # @return [Fixnum]
    #
    def multiply(value, multiplier)
      return value * value
    end

By parsing the YARD tags ruby-lint can now know what the parameter types are
and what type of data the method returns. This in turn allows ruby-lint to
perform full analysis on the arguments instead of being forced to ignore them
completely.

### Loading External Files

In previous versions ruby-lint had no way of loading external code that was not
pre-defined using the built-in definitions (found in
`lib/ruby-lint/definitions`). As a result a lot of false positives would be
triggered when analysing complex projects (e.g. the typical Rails project).

This has been addressed by introducing so called "file scanners" and "file
loaders". In short, these scan for a set of constants used in a file and try to
find the corresponding Ruby file that defines it (recursively). This greatly
enhances the accuracy of analysis.

Currently the algorithm for this is rather basic and can, especially in big
projects, slow analysis down by quite a bit. This will be resolved in upcoming
releases. Keep an eye on the following issues for more information:

* <https://github.com/YorickPeterse/ruby-lint/issues/50>
* <https://github.com/YorickPeterse/ruby-lint/issues/49>

### Other Changes

Besides the two features mentioned above various other changes have also been
made, these are listed below.

* Lots of bug fixes and cleanups, as you'd expect.
* Constants (classes and modules) can now be referred by their name inside
  themselves (e.g. "Foo" inside the class "Foo" refers to that class).
* The text presenter now only shows filenames instead of the full file path,
  reducing clutter.
* Support for default global variables such as `$LOADED_FEATURES`
* Support for methods such as `alias` and `alias_method`
* Support for the `attr_*` family of methods
* The test suite has been migrated from Bacon to RSpec
* Support for keyword arguments.
* Updated built-in Rails definitions to include more methods.
* Debugging/benchmarking output for the analyze command.
* The analysis class ConfusingVariables has been removed due to not being very
  useful.
* Various issues with method lookups inside blocks have been resolved.
* Various internals have been cleaned up.
* Improved error messages for calls to undefined methods.

## 0.0.4 - 2013-07-14

Near total refactor of the entire project. New parser setup based on the
"parser" Gem instead of using a custom built parser built using Ripper. More
analysis classes, a more stable mechanism for building definitions, bug fixes
and a lot more.

This release (thanks to "parser") also introduces support for Jruby and
Rubinius (2.0/Git HEAD, 1.X is not supported).

## 0.0.3 - 2013-04-22

Lots of internal changes for tasks such as building definitions. Also included
a large set of bugfixes.

## 0.0.2 - 2012-11-15

Various changes to the old parser.

## 0.0.1 - 2012-11-13

First public release of ruby-lint.

[yard]: http://yardoc.org/
