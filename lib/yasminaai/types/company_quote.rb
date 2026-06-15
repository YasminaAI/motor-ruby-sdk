# frozen_string_literal: true

module Yasminaai
  module Types
    class CompanyQuote < Internal::Types::Model
      field :company_name, -> { String }, optional: true, nullable: false

      field :prices, -> { Internal::Types::Array[Yasminaai::Types::QuotePrice] }, optional: true, nullable: false

      field :benefits, -> { Internal::Types::Array[Yasminaai::Types::Benefit] }, optional: true, nullable: false
    end
  end
end
