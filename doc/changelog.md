# @title Changelog
# Changelog

This document contains a short summary of the various releases of ruby-lint.
For a full list of commits included in each release see the corresponding Git
tags (named after the versions).

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
