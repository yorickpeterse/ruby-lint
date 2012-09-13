# TODO

This document is meant to keep track of things that have to be done before
Rlint becomes even remotely useful.

## General

* documentation of the various classes (e.g. Rlint::Parser)
* commandline executable

## Parser

* syntax elements that I might've missed in the past

## Analyzing

* introduce the pedantic option: info, error or warning messages that are only
  displayed when this option is enabled. Useful for messages a lot of Rubyists
  will disagree with.
* various classes that are capable of analyzing Ruby code
  * defined classes, methods, variables and the likes
  * incorrect coding styles such as camelCasing for method names
  * modifying standard classes such as String, Time, etc
  * warning for potentially dangerous/confusing operations such as defining
    global methods and the use of `method_missing()`
  * shadowing previously defined variables/methods (e.g. in an `#each()` loop)
