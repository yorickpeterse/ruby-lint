require File.expand_path('../../helper', __FILE__)

describe 'RubyLint::Iterator' do
  should 'iterate over a simple AST' do
    ast = parse('10; 20; 30', false)

    iterator = Class.new(RubyLint::Iterator) do
      def on_root(node)
        @options[:events] << :on_root
      end

      def after_root(node)
        @options[:events] << :after_root
      end

      def on_integer(node)
        unless @options[:events].include?(:on_integer)
          @options[:events] << :on_integer
        end

        @options[:numbers] << node.children[0]
      end

      def after_integer(node)
        unless @options[:events].include?(:after_integer)
          @options[:events] << :after_integer
        end
      end
    end

    iterator = iterator.new(:numbers => [], :events => [])

    iterator.iterate(ast)

    iterator.options[:numbers].should == ['10', '20', '30']
    iterator.options[:events].should  == [
      :on_root,
      :on_integer,
      :after_integer,
      :after_root
    ]
  end

  should 'iterate over a multi dimensional AST' do
    code = <<-CODE
class Example
  def some_method
    puts '10'
  end
end
    CODE

    ast = parse(code, false)

    iterator = Class.new(RubyLint::Iterator) do
      def on_class(node)
        @options[:class] = node.children[0].children[0]
      end

      def on_method_definition(node)
        @options[:method] = node.children[0]
      end

      def on_method(node)
        @options[:call] = node.children[0]
      end
    end

    iterator = iterator.new

    iterator.iterate(ast)

    iterator.options[:class].should  == 'Example'
    iterator.options[:method].should == 'some_method'
    iterator.options[:call].should   == 'puts'
  end
end
