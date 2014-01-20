# RCAP is released under the BSD License.
#
# Copyright 2010 - 2013 AIMRED CC. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY AIMRED CC ``AS IS'' AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
# EVENT SHALL AIMRED CC OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
# OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# The views and conclusions contained in the software and documentation are
# those of the authors and should not be interpreted as representing official
# policies, either expressed or implied, of AIMRED CC.

module RCAP
  # The VM will raise an error if this class doesn't exist.
  module Base
    class Alert
    end
  end

  module CAP_1_2

    # An Alert object is valid if
    # * it has an identifier
    # * it has a sender
    # * it has a sent time
    # * it has a valid status value
    # * it has a valid messge type value
    # * it has a valid scope value
    # * all Info objects contained in infos are valid
    class Alert < RCAP::Base::Alert

      XMLNS = 'urn:oasis:names:tc:emergency:cap:1.2'
      CAP_VERSION = '1.2'

      STATUS_DRAFT    = 'Draft'
      # Valid values for status
      VALID_STATUSES = [ STATUS_ACTUAL, STATUS_EXERCISE, STATUS_SYSTEM, STATUS_TEST, STATUS_DRAFT ]

      # @return [String]
      def xmlns
        XMLNS
      end

      # @return [Class]
      def info_class
        Info
      end
    end
  end
end
