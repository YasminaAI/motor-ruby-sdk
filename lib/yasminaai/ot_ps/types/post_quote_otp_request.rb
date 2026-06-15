# frozen_string_literal: true

module Yasminaai
  module OtPs
    module Types
      class PostQuoteOtpRequest < Internal::Types::Model
        field :email, -> { String }, optional: false, nullable: false

        field :phone, -> { String }, optional: false, nullable: false

        field :owner_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
