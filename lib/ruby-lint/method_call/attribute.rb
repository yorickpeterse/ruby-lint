module RubyLint
  module MethodCall
    ##
    # The Attribute class is used for evaluating method calls to `attr`,
    # `attr_reader` and similar methods.
    #
    class Attribute < Base
      ##
      # @see Base#evaluate
      #
      def evaluate(arguments, context)
        method = "evaluate_#{node.children[1]}"

        send(method, arguments, context) if respond_to?(method)
      end

      ##
      # Evaluates a call to `attr`. The `attr` method can be used in two
      # different ways (thank you Ruby for being consistent):
      #
      # 1. `attr [NAME], [TRUE|FALSE]`
      # 2. `attr [NAME], [NAME], etc
      #
      # @see #evaluate
      #
      def evaluate_attr(arguments, context)
        if arguments[1] and arguments[1].type == :true
          names = [arguments[0].value.to_s, arguments[0].value.to_s + '=']
        else
          names = arguments.map { |arg| arg.value.to_s }
        end

        names.each do |name|
          context.define_instance_method(name)
        end
      end

      ##
      # Evaluates method calls to `attr_reader`.
      #
      # @see #evaluate
      #
      def evaluate_attr_reader(arguments, context)
        arguments.each do |arg|
          context.define_instance_method(arg.value.to_s)
        end
      end

      ##
      # Evaluates method calls to `attr_writer`.
      #
      # @see #evaluate
      #
      def evaluate_attr_writer(arguments, context)
        arguments.each do |arg|
          context.define_instance_method(arg.value.to_s + '=')
        end
      end

      ##
      # Evaluates method calls to `attr_accessor`.
      #
      # @see #evaluate
      #
      def evaluate_attr_accessor(arguments, context)
        arguments.each do |arg|
          name = arg.value.to_s

          context.define_instance_method(name)
          context.define_instance_method(name + '=')
        end
      end
    end # Attribute
  end # MethodCall
end # RubyLint
