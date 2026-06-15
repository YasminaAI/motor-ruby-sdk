# frozen_string_literal: true

module Yasminaai
  module Quotes
    module Types
      class PostQuoteRequestsRequest < Internal::Types::Model
        field :owner_id, -> { String }, optional: false, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: false, nullable: false

        field :birthdate, -> { String }, optional: false, nullable: false

        field :car_sequence_number, -> { String }, optional: false, nullable: false

        field :is_ownership_transfer, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :current_car_owner_id, -> { String }, optional: true, nullable: false

        field :car_estimated_cost, -> { Integer }, optional: false, nullable: false

        field :car_model_year, -> { Integer }, optional: true, nullable: false

        field :start_date, -> { String }, optional: true, nullable: false

        field :drivers, -> { Internal::Types::Array[Yasminaai::Quotes::Types::PostQuoteRequestsRequestDriversItem] }, optional: true, nullable: false
      end
    end
  end
end
