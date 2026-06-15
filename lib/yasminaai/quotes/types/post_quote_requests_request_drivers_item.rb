# frozen_string_literal: true

module Yasminaai
  module Quotes
    module Types
      class PostQuoteRequestsRequestDriversItem < Internal::Types::Model
        field :owner_id, -> { String }, optional: false, nullable: false

        field :birthdate, -> { String }, optional: false, nullable: false

        field :driving_percentage, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
