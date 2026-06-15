# frozen_string_literal: true

module Yasminaai
  module Internal
    module Types
      module Unknown
        include Yasminaai::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
