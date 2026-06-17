# frozen_string_literal: true

module Yasminaai
  module Quotes
    module Types
      class GetQuoteRequestsRequest < Internal::Types::Model
        field :date_from, -> { String }, optional: true, nullable: false

        field :date_to, -> { String }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false

        field :include_aggregates, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
