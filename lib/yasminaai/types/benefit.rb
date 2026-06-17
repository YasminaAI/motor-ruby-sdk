# frozen_string_literal: true

module Yasminaai
  module Types
    class Benefit < Internal::Types::Model
      field :quote_benefit_id, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :name_ar, -> { String }, optional: true, nullable: false

      field :amount, -> { Integer }, optional: true, nullable: false

      field :vat, -> { Integer }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
