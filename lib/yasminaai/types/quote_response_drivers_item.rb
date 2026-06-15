# frozen_string_literal: true

module Yasminaai
  module Types
    class QuoteResponseDriversItem < Internal::Types::Model
      field :owner_id, -> { String }, optional: true, nullable: false

      field :birthdate, -> { String }, optional: true, nullable: false

      field :driving_percentage, -> { Integer }, optional: true, nullable: false
    end
  end
end
