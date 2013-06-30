# @title Configuration
# Configuration

The default configuration of ruby-lint should be suitable for most people.
However, depending on your code base you may get an usual amount of false
positives. In particular the class {RubyLint::Analysis::UndefinedMethods} can
produce a lot of false positives.

ruby-lint allows developers to customize the various parts of the tool such as
what kind of messages to report and what types of analysis to run. This can be
done in two different ways:

1. Using CLI options
2. Using a configuration file

The first option is useful if you want to change something only once or if
you're messing around with the various options. If you actually want your
changes to stick around you'll want to use a configuration file instead.

## File Locations

When running the CLI ruby-lint will try to load one of the following two
configuration files:

* $PWD/ruby-lint.yml
* $HOME/.ruby-lint.yml

Here `$PWD` refers to the current working directory and `$HOME` to the user's
home directory. If ruby-lint finds a configuration file in the current working
directory the global one will *not* be loaded. This allows you to use project
specific settings in combination with a global configuration file as a
fallback.

## Configuring ruby-lint

Configuration is done using simple YAML files with the following structure:

* `requires`: an Array of files to require before running ruby-lint
* `report_levels`: an Array of report levels to enable.
* `analysis_classes`: an Array of the human friendly names of the analysis
  classes to enable.
* `presenter`: the human friendly name of the presenter to use.

A basic example looks lik the following:

    ---
    requires:
      - ruby-lint/definitions/core/string
    report_levels:
      - error
    analysis_classes:
      - undefined_methods
      - undefined_variables
    presenter: json

If no value is given for a certain configuration option the default value(s)
will be used instead.
