# frozen_string_literal: true

module Yasminaai
  module Types
    class QuotePrice < Internal::Types::Model
      field :quote_price_id, -> { String }, optional: true, nullable: false

      field :deductible, -> { Integer }, optional: true, nullable: false

      field :subtotal, -> { Integer }, optional: true, nullable: false

      field :vat_percentage, -> { Integer }, optional: true, nullable: false

      field :vat, -> { Integer }, optional: true, nullable: false

      field :total, -> { Integer }, optional: true, nullable: false
    end
  end
end
