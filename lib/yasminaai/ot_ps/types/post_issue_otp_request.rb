# frozen_string_literal: true

module Yasminaai
  module OtPs
    module Types
      class PostIssueOtpRequest < Internal::Types::Model
        field :email, -> { String }, optional: false, nullable: false

        field :phone, -> { String }, optional: false, nullable: false

        field :owner_id, -> { String }, optional: false, nullable: false

        field :quote_request_id, -> { Integer }, optional: false, nullable: false

        field :quote_reference_id, -> { String }, optional: false, nullable: false

        field :quote_price_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
