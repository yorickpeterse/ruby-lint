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

      def on_int(node)
        unless @options[:events].include?(:on_int)
          @options[:events] << :on_int
        end

        @options[:numbers] << node.children[0]
      end

      def after_int(node)
        unless @options[:events].include?(:after_int)
          @options[:events] << :after_int
        end
      end
    end

    iterator = iterator.new(:numbers => [], :events => [])

    iterator.iterate(ast)

    iterator.options[:numbers].should == [10, 20, 30]
    iterator.options[:events].should  == [
      :on_root,
      :on_int,
      :after_int,
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
        @options[:class] = node.children[0].children[1]
      end

      def on_def(node)
        @options[:method] = node.children[0]
      end

      def on_send(node)
        @options[:call] = node.children[1]
      end
    end

    iterator = iterator.new

    iterator.iterate(ast)

    iterator.options[:class].should  == :Example
    iterator.options[:method].should == :some_method
    iterator.options[:call].should   == :puts
  end
end
