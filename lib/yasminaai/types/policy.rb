# frozen_string_literal: true

module Yasminaai
  module Types
    class Policy < Internal::Types::Model
      field :id, -> { Integer }, optional: true, nullable: false

      field :meta_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :start_date, -> { String }, optional: true, nullable: false

      field :provider_policy_id, -> { Integer }, optional: true, nullable: false

      field :provider_policy, -> { String }, optional: true, nullable: false

      field :order_status, -> { Integer }, optional: true, nullable: false

      field :approval_status, -> { Integer }, optional: true, nullable: false

      field :end_date, -> { String }, optional: true, nullable: false

      field :is_claimed, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false

      field :client_id, -> { String }, optional: true, nullable: false

      field :canceled_at, -> { String }, optional: true, nullable: false

      field :invoice, -> { String }, optional: true, nullable: false

      field :cancellation_document, -> { String }, optional: true, nullable: false
    end
  end
end
