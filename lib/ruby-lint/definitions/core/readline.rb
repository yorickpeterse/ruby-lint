# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Readline') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('basic_quote_characters')

  klass.define_method('basic_quote_characters=')

  klass.define_method('basic_word_break_characters')

  klass.define_method('basic_word_break_characters=')

  klass.define_method('completer_quote_characters')

  klass.define_method('completer_quote_characters=')

  klass.define_method('completer_word_break_characters')

  klass.define_method('completer_word_break_characters=')

  klass.define_method('completion_append_character')

  klass.define_method('completion_append_character=')

  klass.define_method('completion_case_fold')

  klass.define_method('completion_case_fold=')

  klass.define_method('completion_proc')

  klass.define_method('completion_proc=')

  klass.define_method('emacs_editing_mode')

  klass.define_method('emacs_editing_mode?')

  klass.define_method('filename_quote_characters')

  klass.define_method('filename_quote_characters=')

  klass.define_method('get_screen_size')

  klass.define_method('initialize')

  klass.define_method('input=')

  klass.define_method('line_buffer')

  klass.define_method('output=')

  klass.define_method('perform_readline')

  klass.define_method('point')

  klass.define_method('readline') do |method|
    method.define_optional_argument('prompt')
    method.define_optional_argument('add_hist')
  end

  klass.define_method('refresh_line')

  klass.define_method('set_screen_size')

  klass.define_method('vi_editing_mode')

  klass.define_method('vi_editing_mode?')

  klass.define_instance_method('readline') do |method|
    method.define_optional_argument('prompt')
    method.define_optional_argument('add_hist')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Readline').deep_freeze
