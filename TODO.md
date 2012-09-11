# TODO

This document is meant to keep track of things that have to be done before
Rlint becomes even remotely useful.

## General

* documentation of the various classes (e.g. Rlint::Parser)
* commandline executable

## Parser

* syntax elements that I might've missed in the past

## Analyzing

* get rid of the second (file name) parameter for callback methods, it's
  annoying as hell and isn't always as useful.
* reporting errors, warnings and other types of messages
* formatting errors as plain text, JSON, etc
* class for storing scope related data (such as local variables)
* various classes that are capable of analyzing Ruby code
