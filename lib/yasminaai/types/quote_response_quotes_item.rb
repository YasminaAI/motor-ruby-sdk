# frozen_string_literal: true

module Yasminaai
  module Types
    class QuoteResponseQuotesItem < Internal::Types::Model
      field :company_name, -> { String }, optional: true, nullable: false

      field :company_name_ar, -> { String }, optional: true, nullable: false

      field :type, -> { Yasminaai::Types::QuoteResponseQuotesItemType }, optional: true, nullable: false

      field :insurance_type_display, -> { String }, optional: true, nullable: false

      field :insurance_type_display_ar, -> { String }, optional: true, nullable: false

      field :company_logo_url, -> { String }, optional: true, nullable: false

      field :square_company_logo_url, -> { String }, optional: true, nullable: false

      field :prices, -> { Internal::Types::Array[Yasminaai::Types::QuotePrice] }, optional: true, nullable: false

      field :benefits, -> { Internal::Types::Array[Yasminaai::Types::Benefit] }, optional: true, nullable: false
    end
  end
end
