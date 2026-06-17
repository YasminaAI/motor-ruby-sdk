# frozen_string_literal: true

module Yasminaai
  module Policies
    module Types
      class PostPoliciesRequest < Internal::Types::Model
        field :otp, -> { String }, optional: false, nullable: false

        field :quote_request_id, -> { Integer }, optional: false, nullable: false

        field :quote_reference_id, -> { String }, optional: false, nullable: false

        field :quote_price_id, -> { String }, optional: false, nullable: false

        field :benefits, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :extra_fields, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
