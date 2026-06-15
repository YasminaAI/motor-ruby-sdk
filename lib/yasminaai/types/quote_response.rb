# frozen_string_literal: true

module Yasminaai
  module Types
    class QuoteResponse < Internal::Types::Model
      field :owner_id, -> { Integer }, optional: true, nullable: false

      field :phone, -> { String }, optional: true, nullable: false

      field :birthdate, -> { String }, optional: true, nullable: false

      field :car_sequence_number, -> { Integer }, optional: true, nullable: false

      field :is_ownership_transfer, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :car_estimated_cost, -> { Integer }, optional: true, nullable: false

      field :car_model_year, -> { Integer }, optional: true, nullable: false

      field :start_date, -> { String }, optional: true, nullable: false

      field :drivers, -> { Internal::Types::Array[Yasminaai::Types::QuoteResponseDriversItem] }, optional: true, nullable: false

      field :quotes, -> { Internal::Types::Array[Yasminaai::Types::QuoteResponseQuotesItem] }, optional: true, nullable: false

      field :client_id, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :id, -> { Integer }, optional: true, nullable: false
    end
  end
end
