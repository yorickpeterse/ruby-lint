# @title Configuration
# Configuration

The default configuration of ruby-lint should be suitable for most people.
However, depending on your code base you may get an usual amount of false
positives. In particular the class {RubyLint::Analyze::UndefinedMethods} can
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

* $PWD/ruby-lint.rb
* $HOME/.ruby-lint.rb

Here `$PWD` refers to the current working directory and `$HOME` to the user's
home directory. If ruby-lint finds a configuration file in the current working
directory the global one will *not* be loaded. This allows you to use project
specific settings in combination with a global configuration file as a
fallback.

## Configuring ruby-lint

The various configuration settings are set using plain old Ruby, there's no
YAML nonsense that gets in your way.

Configuration settings are stored in {RubyLint.configuration} (as an instance
of {RubyLint::Configuration}). Although you can access this object directly in
the form of `RubyLint.configuration.foo = :bar` it's recommended that you use
{RubyLint.configure} instead since it provides a shorter and friendlier syntax.

The boilerplate for configuring ruby-lint looks like the following:

    RubyLint.configure do |config|

    end

To change the presenter to use you'd use the following:

    RubyLint.configure do |config|
      config.presenter = RubyLint::Presenter::JSON
    end

Changing the analysis classes is done as following:

    RubyLint.configure do |config|
      # Only use the two classes listed below.
      config.analysis = [
        RubyLint::Analysis::UndefinedVariables,
        RubyLint::Analysis::ShadowingVariables
      ]
    end

And changing the reporting levels:

    RubyLint.configure do |config|
      config.report_levels = [:error]
    end

Combined together this leads to the following configuration:

    RubyLint.configure do |config|
      config.presenter = RubyLint::Presenter::JSON

      # Only use the two classes listed below.
      config.analysis = [
        RubyLint::Analysis::UndefinedVariables,
        RubyLint::Analysis::ShadowingVariables
      ]

      config.report_levels = [:error]
    end

For more information see the documentation of {RubyLint::Configuration}.
