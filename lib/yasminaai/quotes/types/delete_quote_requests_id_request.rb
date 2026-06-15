# frozen_string_literal: true

module Yasminaai
  module Quotes
    module Types
      class DeleteQuoteRequestsIDRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
