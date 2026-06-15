# frozen_string_literal: true

module Yasminaai
  module Policies
    module Types
      class GetPoliciesRequest < Internal::Types::Model
        field :quote_request_id, -> { Integer }, optional: true, nullable: false

        field :quote_price_id, -> { String }, optional: true, nullable: false

        field :provider_policy_id, -> { Integer }, optional: true, nullable: false

        field :car_sequence_number, -> { String }, optional: true, nullable: false

        field :new_owner_id, -> { String }, optional: true, nullable: false

        field :previous_owner_id, -> { String }, optional: true, nullable: false

        field :status, -> { Integer }, optional: true, nullable: false

        field :min_price, -> { Integer }, optional: true, nullable: false

        field :max_price, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
