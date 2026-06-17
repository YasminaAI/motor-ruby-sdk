# frozen_string_literal: true

module Yasminaai
  module Types
    class PolicyMonthAggregate < Internal::Types::Model
      field :count, -> { Integer }, optional: true, nullable: false

      field :total_price, -> { Integer }, optional: true, nullable: false
    end
  end
end
