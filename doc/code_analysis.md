# @title Code Analysis
# Code Analysis

Code analysis in ruby-lint is done using a set of classes that extend
{RubyLint::Analysis::Base}. This base class provides various methods for easily
walking over an AST by using callback methods based on the node types. For
example, the callback method `on_string` is used before a `(string)` node is
processed. For more low level details see the API documentation of
{RubyLint::Iterator} and {RubyLint::Analysis::Base} (which extends the former).

For this guide we'll be creating an analysis class that checks for local
variables written in camelCase. Whenever it finds these variables a warning
will be added informing the developer that he/she should use snake\_case
instead.

At the most basic level this class looks like the following:

    class CamelCaseVariables < RubyLint::Analysis::Base

    end

By extending the base class your own class already comes with a method for
walking the AST and calling callbacks as well as a few helper methods for
adding errors and the likes.

To use this class you'll have to create an instance of it and call
{RubyLint::Iterator#iterate} and pass it an AST:

    ast      = RubyLint::Parser.new.parse('exampleNumber = 10')
    iterator = CamelCaseVariables.new

    iterator.iterate(ast)

When running the above code you'll notice that nothing actually happens. This
is because no callback methods have been added yet. There are two types of
callback methods that can be added:

* `on_X`
* `after_X`

Here X is the name of the node type. Methods that start with `on_` will be
executed before any child nodes (of the current node) are processed.  Methods
that start with `after_` will be executed after the node and its child nodes
have been processed. Each callback method takes a single argument: an instance
of {RubyLint::AST::Node} containing information about the current node.

In the above example we only need an `on_` callback:

    class CamelCaseVariables < RubyLint::Analysis::Base
      def on_lvar(node)
        if node.children[0].to_s =~ /[a-z][A-Z]/
          warning('use snake_case for local variables', node)
        end
      end
    end

If you now were to run the above it would technically work but still you won't
see anything. This is because you also need to specify a {RubyLint::Report}
instance to use for storing data such as warnings and error messages. This can
be done as following:

    report   = RubyLint::Report.new
    iterator = CamelCaseVariables.new(:report => report)

The last step is to actually display the report using a presenter. For this
exercise we'll use {RubyLint::Presenter::Text}. Presenters are quite easy to
use:

    presenter = RubyLint::Presenter::Text.new

    presenter.present(report)

The full code of this exercise looks like the following:

    class CamelCaseVariables < RubyLint::Analysis::Base
      def on_lvar(node)
        if node.children[0].to_s =~ /[a-z][A-Z]/
          warning('use snake_case for local variables', node)
        end
      end
    end

    ast       = RubyLint::Parser.new.parse('exampleNumber = 10')
    report    = RubyLint::Report.new
    iterator  = CamelCaseVariables.new(:report => report)
    presenter = RubyLint::Presenter::Text.new

    iterator.iterate(ast)

    puts presenter.present(report)
