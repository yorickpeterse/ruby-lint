##
# Constant: Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('handle') do |method|
    method.define_optional_argument('additional')
  end
end

##
# Constant: Errno::E2BIG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::E2BIG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::E2BIG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::E2BIG::Errno') do |klass|
end

##
# Constant: Errno::E2BIG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::E2BIG::Strerror') do |klass|
end

##
# Constant: Errno::EACCES
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EACCES') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EACCES::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EACCES::Errno') do |klass|
end

##
# Constant: Errno::EACCES::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EACCES::Strerror') do |klass|
end

##
# Constant: Errno::EADDRINUSE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADDRINUSE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EADDRINUSE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADDRINUSE::Errno') do |klass|
end

##
# Constant: Errno::EADDRINUSE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADDRINUSE::Strerror') do |klass|
end

##
# Constant: Errno::EADDRNOTAVAIL
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADDRNOTAVAIL') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EADDRNOTAVAIL::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADDRNOTAVAIL::Errno') do |klass|
end

##
# Constant: Errno::EADDRNOTAVAIL::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADDRNOTAVAIL::Strerror') do |klass|
end

##
# Constant: Errno::EADV
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADV') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EADV::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADV::Errno') do |klass|
end

##
# Constant: Errno::EADV::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EADV::Strerror') do |klass|
end

##
# Constant: Errno::EAFNOSUPPORT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EAFNOSUPPORT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EAFNOSUPPORT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EAFNOSUPPORT::Errno') do |klass|
end

##
# Constant: Errno::EAFNOSUPPORT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EAFNOSUPPORT::Strerror') do |klass|
end

##
# Constant: Errno::EAGAIN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EAGAIN') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EAGAIN::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EAGAIN::Errno') do |klass|
end

##
# Constant: Errno::EAGAIN::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EAGAIN::Strerror') do |klass|
end

##
# Constant: Errno::EALREADY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EALREADY') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EALREADY::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EALREADY::Errno') do |klass|
end

##
# Constant: Errno::EALREADY::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EALREADY::Strerror') do |klass|
end

##
# Constant: Errno::EBADE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBADE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADE::Errno') do |klass|
end

##
# Constant: Errno::EBADE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADE::Strerror') do |klass|
end

##
# Constant: Errno::EBADF
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADF') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBADF::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADF::Errno') do |klass|
end

##
# Constant: Errno::EBADF::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADF::Strerror') do |klass|
end

##
# Constant: Errno::EBADFD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADFD') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBADFD::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADFD::Errno') do |klass|
end

##
# Constant: Errno::EBADFD::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADFD::Strerror') do |klass|
end

##
# Constant: Errno::EBADMSG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADMSG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBADMSG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADMSG::Errno') do |klass|
end

##
# Constant: Errno::EBADMSG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADMSG::Strerror') do |klass|
end

##
# Constant: Errno::EBADR
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADR') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBADR::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADR::Errno') do |klass|
end

##
# Constant: Errno::EBADR::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADR::Strerror') do |klass|
end

##
# Constant: Errno::EBADRQC
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADRQC') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBADRQC::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADRQC::Errno') do |klass|
end

##
# Constant: Errno::EBADRQC::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADRQC::Strerror') do |klass|
end

##
# Constant: Errno::EBADSLT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADSLT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBADSLT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADSLT::Errno') do |klass|
end

##
# Constant: Errno::EBADSLT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBADSLT::Strerror') do |klass|
end

##
# Constant: Errno::EBFONT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBFONT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBFONT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBFONT::Errno') do |klass|
end

##
# Constant: Errno::EBFONT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBFONT::Strerror') do |klass|
end

##
# Constant: Errno::EBUSY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBUSY') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EBUSY::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBUSY::Errno') do |klass|
end

##
# Constant: Errno::EBUSY::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EBUSY::Strerror') do |klass|
end

##
# Constant: Errno::ECANCELED
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECANCELED') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ECANCELED::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECANCELED::Errno') do |klass|
end

##
# Constant: Errno::ECANCELED::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECANCELED::Strerror') do |klass|
end

##
# Constant: Errno::ECHILD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECHILD') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ECHILD::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECHILD::Errno') do |klass|
end

##
# Constant: Errno::ECHILD::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECHILD::Strerror') do |klass|
end

##
# Constant: Errno::ECHRNG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECHRNG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ECHRNG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECHRNG::Errno') do |klass|
end

##
# Constant: Errno::ECHRNG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECHRNG::Strerror') do |klass|
end

##
# Constant: Errno::ECOMM
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECOMM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ECOMM::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECOMM::Errno') do |klass|
end

##
# Constant: Errno::ECOMM::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECOMM::Strerror') do |klass|
end

##
# Constant: Errno::ECONNABORTED
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNABORTED') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ECONNABORTED::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNABORTED::Errno') do |klass|
end

##
# Constant: Errno::ECONNABORTED::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNABORTED::Strerror') do |klass|
end

##
# Constant: Errno::ECONNREFUSED
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNREFUSED') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ECONNREFUSED::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNREFUSED::Errno') do |klass|
end

##
# Constant: Errno::ECONNREFUSED::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNREFUSED::Strerror') do |klass|
end

##
# Constant: Errno::ECONNRESET
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNRESET') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ECONNRESET::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNRESET::Errno') do |klass|
end

##
# Constant: Errno::ECONNRESET::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ECONNRESET::Strerror') do |klass|
end

##
# Constant: Errno::EDEADLK
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDEADLK') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EDEADLK::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDEADLK::Errno') do |klass|
end

##
# Constant: Errno::EDEADLK::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDEADLK::Strerror') do |klass|
end

##
# Constant: Errno::EDESTADDRREQ
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDESTADDRREQ') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EDESTADDRREQ::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDESTADDRREQ::Errno') do |klass|
end

##
# Constant: Errno::EDESTADDRREQ::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDESTADDRREQ::Strerror') do |klass|
end

##
# Constant: Errno::EDOM
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDOM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EDOM::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDOM::Errno') do |klass|
end

##
# Constant: Errno::EDOM::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDOM::Strerror') do |klass|
end

##
# Constant: Errno::EDOTDOT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDOTDOT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EDOTDOT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDOTDOT::Errno') do |klass|
end

##
# Constant: Errno::EDOTDOT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDOTDOT::Strerror') do |klass|
end

##
# Constant: Errno::EDQUOT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDQUOT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EDQUOT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDQUOT::Errno') do |klass|
end

##
# Constant: Errno::EDQUOT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EDQUOT::Strerror') do |klass|
end

##
# Constant: Errno::EEXIST
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EEXIST') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EEXIST::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EEXIST::Errno') do |klass|
end

##
# Constant: Errno::EEXIST::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EEXIST::Strerror') do |klass|
end

##
# Constant: Errno::EFAULT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EFAULT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EFAULT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EFAULT::Errno') do |klass|
end

##
# Constant: Errno::EFAULT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EFAULT::Strerror') do |klass|
end

##
# Constant: Errno::EFBIG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EFBIG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EFBIG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EFBIG::Errno') do |klass|
end

##
# Constant: Errno::EFBIG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EFBIG::Strerror') do |klass|
end

##
# Constant: Errno::EHOSTDOWN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EHOSTDOWN') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EHOSTDOWN::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EHOSTDOWN::Errno') do |klass|
end

##
# Constant: Errno::EHOSTDOWN::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EHOSTDOWN::Strerror') do |klass|
end

##
# Constant: Errno::EHOSTUNREACH
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EHOSTUNREACH') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EHOSTUNREACH::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EHOSTUNREACH::Errno') do |klass|
end

##
# Constant: Errno::EHOSTUNREACH::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EHOSTUNREACH::Strerror') do |klass|
end

##
# Constant: Errno::EIDRM
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EIDRM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EIDRM::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EIDRM::Errno') do |klass|
end

##
# Constant: Errno::EIDRM::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EIDRM::Strerror') do |klass|
end

##
# Constant: Errno::EILSEQ
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EILSEQ') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EILSEQ::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EILSEQ::Errno') do |klass|
end

##
# Constant: Errno::EILSEQ::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EILSEQ::Strerror') do |klass|
end

##
# Constant: Errno::EINPROGRESS
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINPROGRESS') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EINPROGRESS::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINPROGRESS::Errno') do |klass|
end

##
# Constant: Errno::EINPROGRESS::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINPROGRESS::Strerror') do |klass|
end

##
# Constant: Errno::EINTR
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINTR') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EINTR::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINTR::Errno') do |klass|
end

##
# Constant: Errno::EINTR::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINTR::Strerror') do |klass|
end

##
# Constant: Errno::EINVAL
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINVAL') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EINVAL::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINVAL::Errno') do |klass|
end

##
# Constant: Errno::EINVAL::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EINVAL::Strerror') do |klass|
end

##
# Constant: Errno::EIO
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EIO') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EIO::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EIO::Errno') do |klass|
end

##
# Constant: Errno::EIO::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EIO::Strerror') do |klass|
end

##
# Constant: Errno::EISCONN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISCONN') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EISCONN::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISCONN::Errno') do |klass|
end

##
# Constant: Errno::EISCONN::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISCONN::Strerror') do |klass|
end

##
# Constant: Errno::EISDIR
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISDIR') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EISDIR::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISDIR::Errno') do |klass|
end

##
# Constant: Errno::EISDIR::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISDIR::Strerror') do |klass|
end

##
# Constant: Errno::EISNAM
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISNAM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EISNAM::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISNAM::Errno') do |klass|
end

##
# Constant: Errno::EISNAM::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EISNAM::Strerror') do |klass|
end

##
# Constant: Errno::EKEYEXPIRED
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYEXPIRED') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EKEYEXPIRED::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYEXPIRED::Errno') do |klass|
end

##
# Constant: Errno::EKEYEXPIRED::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYEXPIRED::Strerror') do |klass|
end

##
# Constant: Errno::EKEYREJECTED
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYREJECTED') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EKEYREJECTED::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYREJECTED::Errno') do |klass|
end

##
# Constant: Errno::EKEYREJECTED::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYREJECTED::Strerror') do |klass|
end

##
# Constant: Errno::EKEYREVOKED
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYREVOKED') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EKEYREVOKED::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYREVOKED::Errno') do |klass|
end

##
# Constant: Errno::EKEYREVOKED::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EKEYREVOKED::Strerror') do |klass|
end

##
# Constant: Errno::EL2HLT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL2HLT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EL2HLT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL2HLT::Errno') do |klass|
end

##
# Constant: Errno::EL2HLT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL2HLT::Strerror') do |klass|
end

##
# Constant: Errno::EL2NSYNC
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL2NSYNC') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EL2NSYNC::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL2NSYNC::Errno') do |klass|
end

##
# Constant: Errno::EL2NSYNC::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL2NSYNC::Strerror') do |klass|
end

##
# Constant: Errno::EL3HLT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL3HLT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EL3HLT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL3HLT::Errno') do |klass|
end

##
# Constant: Errno::EL3HLT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL3HLT::Strerror') do |klass|
end

##
# Constant: Errno::EL3RST
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL3RST') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EL3RST::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL3RST::Errno') do |klass|
end

##
# Constant: Errno::EL3RST::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EL3RST::Strerror') do |klass|
end

##
# Constant: Errno::ELIBACC
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBACC') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ELIBACC::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBACC::Errno') do |klass|
end

##
# Constant: Errno::ELIBACC::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBACC::Strerror') do |klass|
end

##
# Constant: Errno::ELIBBAD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBBAD') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ELIBBAD::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBBAD::Errno') do |klass|
end

##
# Constant: Errno::ELIBBAD::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBBAD::Strerror') do |klass|
end

##
# Constant: Errno::ELIBEXEC
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBEXEC') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ELIBEXEC::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBEXEC::Errno') do |klass|
end

##
# Constant: Errno::ELIBEXEC::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBEXEC::Strerror') do |klass|
end

##
# Constant: Errno::ELIBMAX
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBMAX') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ELIBMAX::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBMAX::Errno') do |klass|
end

##
# Constant: Errno::ELIBMAX::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBMAX::Strerror') do |klass|
end

##
# Constant: Errno::ELIBSCN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBSCN') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ELIBSCN::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBSCN::Errno') do |klass|
end

##
# Constant: Errno::ELIBSCN::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELIBSCN::Strerror') do |klass|
end

##
# Constant: Errno::ELNRNG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELNRNG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ELNRNG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELNRNG::Errno') do |klass|
end

##
# Constant: Errno::ELNRNG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELNRNG::Strerror') do |klass|
end

##
# Constant: Errno::ELOOP
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELOOP') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ELOOP::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELOOP::Errno') do |klass|
end

##
# Constant: Errno::ELOOP::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ELOOP::Strerror') do |klass|
end

##
# Constant: Errno::EMEDIUMTYPE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMEDIUMTYPE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EMEDIUMTYPE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMEDIUMTYPE::Errno') do |klass|
end

##
# Constant: Errno::EMEDIUMTYPE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMEDIUMTYPE::Strerror') do |klass|
end

##
# Constant: Errno::EMFILE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMFILE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EMFILE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMFILE::Errno') do |klass|
end

##
# Constant: Errno::EMFILE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMFILE::Strerror') do |klass|
end

##
# Constant: Errno::EMLINK
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMLINK') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EMLINK::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMLINK::Errno') do |klass|
end

##
# Constant: Errno::EMLINK::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMLINK::Strerror') do |klass|
end

##
# Constant: Errno::EMSGSIZE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMSGSIZE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EMSGSIZE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMSGSIZE::Errno') do |klass|
end

##
# Constant: Errno::EMSGSIZE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMSGSIZE::Strerror') do |klass|
end

##
# Constant: Errno::EMULTIHOP
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMULTIHOP') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EMULTIHOP::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMULTIHOP::Errno') do |klass|
end

##
# Constant: Errno::EMULTIHOP::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EMULTIHOP::Strerror') do |klass|
end

##
# Constant: Errno::ENAMETOOLONG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENAMETOOLONG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENAMETOOLONG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENAMETOOLONG::Errno') do |klass|
end

##
# Constant: Errno::ENAMETOOLONG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENAMETOOLONG::Strerror') do |klass|
end

##
# Constant: Errno::ENAVAIL
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENAVAIL') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENAVAIL::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENAVAIL::Errno') do |klass|
end

##
# Constant: Errno::ENAVAIL::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENAVAIL::Strerror') do |klass|
end

##
# Constant: Errno::ENETDOWN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETDOWN') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENETDOWN::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETDOWN::Errno') do |klass|
end

##
# Constant: Errno::ENETDOWN::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETDOWN::Strerror') do |klass|
end

##
# Constant: Errno::ENETRESET
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETRESET') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENETRESET::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETRESET::Errno') do |klass|
end

##
# Constant: Errno::ENETRESET::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETRESET::Strerror') do |klass|
end

##
# Constant: Errno::ENETUNREACH
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETUNREACH') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENETUNREACH::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETUNREACH::Errno') do |klass|
end

##
# Constant: Errno::ENETUNREACH::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENETUNREACH::Strerror') do |klass|
end

##
# Constant: Errno::ENFILE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENFILE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENFILE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENFILE::Errno') do |klass|
end

##
# Constant: Errno::ENFILE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENFILE::Strerror') do |klass|
end

##
# Constant: Errno::ENOANO
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOANO') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOANO::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOANO::Errno') do |klass|
end

##
# Constant: Errno::ENOANO::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOANO::Strerror') do |klass|
end

##
# Constant: Errno::ENOBUFS
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOBUFS') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOBUFS::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOBUFS::Errno') do |klass|
end

##
# Constant: Errno::ENOBUFS::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOBUFS::Strerror') do |klass|
end

##
# Constant: Errno::ENOCSI
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOCSI') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOCSI::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOCSI::Errno') do |klass|
end

##
# Constant: Errno::ENOCSI::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOCSI::Strerror') do |klass|
end

##
# Constant: Errno::ENODATA
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENODATA') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENODATA::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENODATA::Errno') do |klass|
end

##
# Constant: Errno::ENODATA::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENODATA::Strerror') do |klass|
end

##
# Constant: Errno::ENODEV
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENODEV') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENODEV::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENODEV::Errno') do |klass|
end

##
# Constant: Errno::ENODEV::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENODEV::Strerror') do |klass|
end

##
# Constant: Errno::ENOENT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOENT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOENT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOENT::Errno') do |klass|
end

##
# Constant: Errno::ENOENT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOENT::Strerror') do |klass|
end

##
# Constant: Errno::ENOEXEC
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOEXEC') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOEXEC::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOEXEC::Errno') do |klass|
end

##
# Constant: Errno::ENOEXEC::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOEXEC::Strerror') do |klass|
end

##
# Constant: Errno::ENOKEY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOKEY') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOKEY::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOKEY::Errno') do |klass|
end

##
# Constant: Errno::ENOKEY::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOKEY::Strerror') do |klass|
end

##
# Constant: Errno::ENOLCK
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOLCK') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOLCK::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOLCK::Errno') do |klass|
end

##
# Constant: Errno::ENOLCK::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOLCK::Strerror') do |klass|
end

##
# Constant: Errno::ENOLINK
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOLINK') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOLINK::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOLINK::Errno') do |klass|
end

##
# Constant: Errno::ENOLINK::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOLINK::Strerror') do |klass|
end

##
# Constant: Errno::ENOMEDIUM
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMEDIUM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOMEDIUM::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMEDIUM::Errno') do |klass|
end

##
# Constant: Errno::ENOMEDIUM::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMEDIUM::Strerror') do |klass|
end

##
# Constant: Errno::ENOMEM
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMEM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOMEM::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMEM::Errno') do |klass|
end

##
# Constant: Errno::ENOMEM::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMEM::Strerror') do |klass|
end

##
# Constant: Errno::ENOMSG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMSG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOMSG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMSG::Errno') do |klass|
end

##
# Constant: Errno::ENOMSG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOMSG::Strerror') do |klass|
end

##
# Constant: Errno::ENONET
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENONET') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENONET::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENONET::Errno') do |klass|
end

##
# Constant: Errno::ENONET::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENONET::Strerror') do |klass|
end

##
# Constant: Errno::ENOPKG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOPKG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOPKG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOPKG::Errno') do |klass|
end

##
# Constant: Errno::ENOPKG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOPKG::Strerror') do |klass|
end

##
# Constant: Errno::ENOPROTOOPT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOPROTOOPT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOPROTOOPT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOPROTOOPT::Errno') do |klass|
end

##
# Constant: Errno::ENOPROTOOPT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOPROTOOPT::Strerror') do |klass|
end

##
# Constant: Errno::ENOSPC
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSPC') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOSPC::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSPC::Errno') do |klass|
end

##
# Constant: Errno::ENOSPC::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSPC::Strerror') do |klass|
end

##
# Constant: Errno::ENOSR
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSR') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOSR::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSR::Errno') do |klass|
end

##
# Constant: Errno::ENOSR::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSR::Strerror') do |klass|
end

##
# Constant: Errno::ENOSTR
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSTR') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOSTR::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSTR::Errno') do |klass|
end

##
# Constant: Errno::ENOSTR::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSTR::Strerror') do |klass|
end

##
# Constant: Errno::ENOSYS
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSYS') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOSYS::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSYS::Errno') do |klass|
end

##
# Constant: Errno::ENOSYS::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOSYS::Strerror') do |klass|
end

##
# Constant: Errno::ENOTBLK
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTBLK') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTBLK::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTBLK::Errno') do |klass|
end

##
# Constant: Errno::ENOTBLK::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTBLK::Strerror') do |klass|
end

##
# Constant: Errno::ENOTCONN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTCONN') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTCONN::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTCONN::Errno') do |klass|
end

##
# Constant: Errno::ENOTCONN::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTCONN::Strerror') do |klass|
end

##
# Constant: Errno::ENOTDIR
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTDIR') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTDIR::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTDIR::Errno') do |klass|
end

##
# Constant: Errno::ENOTDIR::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTDIR::Strerror') do |klass|
end

##
# Constant: Errno::ENOTEMPTY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTEMPTY') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTEMPTY::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTEMPTY::Errno') do |klass|
end

##
# Constant: Errno::ENOTEMPTY::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTEMPTY::Strerror') do |klass|
end

##
# Constant: Errno::ENOTNAM
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTNAM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTNAM::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTNAM::Errno') do |klass|
end

##
# Constant: Errno::ENOTNAM::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTNAM::Strerror') do |klass|
end

##
# Constant: Errno::ENOTRECOVERABLE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTRECOVERABLE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTRECOVERABLE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTRECOVERABLE::Errno') do |klass|
end

##
# Constant: Errno::ENOTRECOVERABLE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTRECOVERABLE::Strerror') do |klass|
end

##
# Constant: Errno::ENOTSOCK
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTSOCK') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTSOCK::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTSOCK::Errno') do |klass|
end

##
# Constant: Errno::ENOTSOCK::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTSOCK::Strerror') do |klass|
end

##
# Constant: Errno::ENOTTY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTTY') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTTY::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTTY::Errno') do |klass|
end

##
# Constant: Errno::ENOTTY::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTTY::Strerror') do |klass|
end

##
# Constant: Errno::ENOTUNIQ
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTUNIQ') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENOTUNIQ::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTUNIQ::Errno') do |klass|
end

##
# Constant: Errno::ENOTUNIQ::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENOTUNIQ::Strerror') do |klass|
end

##
# Constant: Errno::ENXIO
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENXIO') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ENXIO::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENXIO::Errno') do |klass|
end

##
# Constant: Errno::ENXIO::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ENXIO::Strerror') do |klass|
end

##
# Constant: Errno::EOPNOTSUPP
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOPNOTSUPP') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EOPNOTSUPP::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOPNOTSUPP::Errno') do |klass|
end

##
# Constant: Errno::EOPNOTSUPP::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOPNOTSUPP::Strerror') do |klass|
end

##
# Constant: Errno::EOVERFLOW
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOVERFLOW') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EOVERFLOW::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOVERFLOW::Errno') do |klass|
end

##
# Constant: Errno::EOVERFLOW::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOVERFLOW::Strerror') do |klass|
end

##
# Constant: Errno::EOWNERDEAD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOWNERDEAD') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EOWNERDEAD::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOWNERDEAD::Errno') do |klass|
end

##
# Constant: Errno::EOWNERDEAD::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EOWNERDEAD::Strerror') do |klass|
end

##
# Constant: Errno::EPERM
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPERM') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EPERM::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPERM::Errno') do |klass|
end

##
# Constant: Errno::EPERM::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPERM::Strerror') do |klass|
end

##
# Constant: Errno::EPFNOSUPPORT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPFNOSUPPORT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EPFNOSUPPORT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPFNOSUPPORT::Errno') do |klass|
end

##
# Constant: Errno::EPFNOSUPPORT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPFNOSUPPORT::Strerror') do |klass|
end

##
# Constant: Errno::EPIPE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPIPE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EPIPE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPIPE::Errno') do |klass|
end

##
# Constant: Errno::EPIPE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPIPE::Strerror') do |klass|
end

##
# Constant: Errno::EPROTO
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTO') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EPROTO::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTO::Errno') do |klass|
end

##
# Constant: Errno::EPROTO::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTO::Strerror') do |klass|
end

##
# Constant: Errno::EPROTONOSUPPORT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTONOSUPPORT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EPROTONOSUPPORT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTONOSUPPORT::Errno') do |klass|
end

##
# Constant: Errno::EPROTONOSUPPORT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTONOSUPPORT::Strerror') do |klass|
end

##
# Constant: Errno::EPROTOTYPE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTOTYPE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EPROTOTYPE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTOTYPE::Errno') do |klass|
end

##
# Constant: Errno::EPROTOTYPE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EPROTOTYPE::Strerror') do |klass|
end

##
# Constant: Errno::ERANGE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERANGE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ERANGE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERANGE::Errno') do |klass|
end

##
# Constant: Errno::ERANGE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERANGE::Strerror') do |klass|
end

##
# Constant: Errno::EREMCHG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMCHG') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EREMCHG::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMCHG::Errno') do |klass|
end

##
# Constant: Errno::EREMCHG::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMCHG::Strerror') do |klass|
end

##
# Constant: Errno::EREMOTE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMOTE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EREMOTE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMOTE::Errno') do |klass|
end

##
# Constant: Errno::EREMOTE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMOTE::Strerror') do |klass|
end

##
# Constant: Errno::EREMOTEIO
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMOTEIO') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EREMOTEIO::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMOTEIO::Errno') do |klass|
end

##
# Constant: Errno::EREMOTEIO::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EREMOTEIO::Strerror') do |klass|
end

##
# Constant: Errno::ERESTART
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERESTART') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ERESTART::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERESTART::Errno') do |klass|
end

##
# Constant: Errno::ERESTART::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERESTART::Strerror') do |klass|
end

##
# Constant: Errno::ERFKILL
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERFKILL') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ERFKILL::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERFKILL::Errno') do |klass|
end

##
# Constant: Errno::ERFKILL::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ERFKILL::Strerror') do |klass|
end

##
# Constant: Errno::EROFS
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EROFS') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EROFS::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EROFS::Errno') do |klass|
end

##
# Constant: Errno::EROFS::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EROFS::Strerror') do |klass|
end

##
# Constant: Errno::ESHUTDOWN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESHUTDOWN') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ESHUTDOWN::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESHUTDOWN::Errno') do |klass|
end

##
# Constant: Errno::ESHUTDOWN::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESHUTDOWN::Strerror') do |klass|
end

##
# Constant: Errno::ESOCKTNOSUPPORT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESOCKTNOSUPPORT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ESOCKTNOSUPPORT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESOCKTNOSUPPORT::Errno') do |klass|
end

##
# Constant: Errno::ESOCKTNOSUPPORT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESOCKTNOSUPPORT::Strerror') do |klass|
end

##
# Constant: Errno::ESPIPE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESPIPE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ESPIPE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESPIPE::Errno') do |klass|
end

##
# Constant: Errno::ESPIPE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESPIPE::Strerror') do |klass|
end

##
# Constant: Errno::ESRCH
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESRCH') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ESRCH::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESRCH::Errno') do |klass|
end

##
# Constant: Errno::ESRCH::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESRCH::Strerror') do |klass|
end

##
# Constant: Errno::ESRMNT
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESRMNT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ESRMNT::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESRMNT::Errno') do |klass|
end

##
# Constant: Errno::ESRMNT::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESRMNT::Strerror') do |klass|
end

##
# Constant: Errno::ESTALE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESTALE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ESTALE::Errno
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESTALE::Errno') do |klass|
end

##
# Constant: Errno::ESTALE::Strerror
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESTALE::Strerror') do |klass|
end

##
# Constant: Errno::ESTRPIPE
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESTRPIPE') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ESTRPIPE::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESTRPIPE::Errno') do |klass|
end

##
# Constant: Errno::ESTRPIPE::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ESTRPIPE::Strerror') do |klass|
end

##
# Constant: Errno::ETIME
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETIME') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ETIME::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETIME::Errno') do |klass|
end

##
# Constant: Errno::ETIME::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETIME::Strerror') do |klass|
end

##
# Constant: Errno::ETIMEDOUT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETIMEDOUT') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ETIMEDOUT::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETIMEDOUT::Errno') do |klass|
end

##
# Constant: Errno::ETIMEDOUT::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETIMEDOUT::Strerror') do |klass|
end

##
# Constant: Errno::ETOOMANYREFS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETOOMANYREFS') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ETOOMANYREFS::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETOOMANYREFS::Errno') do |klass|
end

##
# Constant: Errno::ETOOMANYREFS::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETOOMANYREFS::Strerror') do |klass|
end

##
# Constant: Errno::ETXTBSY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETXTBSY') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::ETXTBSY::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETXTBSY::Errno') do |klass|
end

##
# Constant: Errno::ETXTBSY::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::ETXTBSY::Strerror') do |klass|
end

##
# Constant: Errno::EUCLEAN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUCLEAN') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EUCLEAN::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUCLEAN::Errno') do |klass|
end

##
# Constant: Errno::EUCLEAN::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUCLEAN::Strerror') do |klass|
end

##
# Constant: Errno::EUNATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUNATCH') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EUNATCH::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUNATCH::Errno') do |klass|
end

##
# Constant: Errno::EUNATCH::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUNATCH::Strerror') do |klass|
end

##
# Constant: Errno::EUSERS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUSERS') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EUSERS::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUSERS::Errno') do |klass|
end

##
# Constant: Errno::EUSERS::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EUSERS::Strerror') do |klass|
end

##
# Constant: Errno::EWOULDBLOCK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EWOULDBLOCK') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EXDEV
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EXDEV') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EXDEV::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EXDEV::Errno') do |klass|
end

##
# Constant: Errno::EXDEV::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EXDEV::Strerror') do |klass|
end

##
# Constant: Errno::EXFULL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EXFULL') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('SystemCallError'))
end

##
# Constant: Errno::EXFULL::Errno
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EXFULL::Errno') do |klass|
end

##
# Constant: Errno::EXFULL::Strerror
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::EXFULL::Strerror') do |klass|
end

##
# Constant: Errno::FFI
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::FFI') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('add_typedef') do |method|
    method.define_argument('current')
    method.define_argument('add')
  end

  klass.define_method('config') do |method|
    method.define_argument('name')
  end

  klass.define_method('config_hash') do |method|
    method.define_argument('name')
  end

  klass.define_method('errno')

  klass.define_method('find_type') do |method|
    method.define_argument('name')
  end

  klass.define_method('generate_function') do |method|
    method.define_argument('ptr')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('generate_trampoline') do |method|
    method.define_argument('obj')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('size_to_type') do |method|
    method.define_argument('size')
  end

  klass.define_method('type_size') do |method|
    method.define_argument('type')
  end
end

##
# Constant: Errno::Mapping
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Errno::Mapping') do |klass|
end