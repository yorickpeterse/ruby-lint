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

      XMLNS = "urn:oasis:names:tc:emergency:cap:1.2"
      CAP_VERSION = "1.2"

      STATUS_DRAFT    = "Draft"
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
