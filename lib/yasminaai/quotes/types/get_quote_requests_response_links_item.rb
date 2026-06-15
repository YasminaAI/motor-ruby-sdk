# frozen_string_literal: true

module Yasminaai
  module Quotes
    module Types
      class GetQuoteRequestsResponseLinksItem < Internal::Types::Model
        field :url, -> { String }, optional: true, nullable: false

        field :label, -> { String }, optional: true, nullable: false

        field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
