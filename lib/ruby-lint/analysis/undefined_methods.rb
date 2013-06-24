module RubyLint
  module Analysis
    ##
    # The UndefinedMethods class checks for the use of undefined methods/local
    # variables and adds errors whenever needed. Based on the receiver of a
    # method call the corresponding error message differs to make it easier to
    # understand what is going on.
    #
    # A simple example:
    #
    #     foobar        # => undefined method foobar
    #     'test'.foobar # => undefined method foobar on an instance of String
    #
    class UndefinedMethods < Base
      def on_send(node)
        receiver, name, _  = *node

        name  = name.to_s
        scope = current_scope

        if receiver and vm.associations.key?(receiver)
          scope = vm.associations[receiver]

          # TODO: no point in creating strings if there's no error. Also move
          # the error message to a separate method.
          if scope.instance?
            klass = scope.ruby_class ? scope.ruby_class : scope.name
            error = "undefined method #{name} on an instance of #{klass}"
          else
            error = "undefined method #{name} on #{scope.name}"
          end
        else
          error = "undefined method #{name}"
        end

        exists = scope.has_definition?(scope.method_call_type, name)

        error(error, node) unless exists
      end
    end # UndefinedMethods
  end # Analysis
end # RubyLint
