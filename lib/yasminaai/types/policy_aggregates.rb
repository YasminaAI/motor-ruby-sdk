# frozen_string_literal: true

module Yasminaai
  module Types
    # Returned only when include_aggregates is true.
    class PolicyAggregates < Internal::Types::Model
      field :total_count, -> { Integer }, optional: true, nullable: false

      field :total_price, -> { Integer }, optional: true, nullable: false

      field :by_month, -> { Internal::Types::Hash[String, Yasminaai::Types::PolicyMonthAggregate] }, optional: true, nullable: false
    end
  end
end
