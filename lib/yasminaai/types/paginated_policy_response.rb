# frozen_string_literal: true

module Yasminaai
  module Types
    class PaginatedPolicyResponse < Internal::Types::Model
      field :current_page, -> { Integer }, optional: true, nullable: false

      field :data, -> { Internal::Types::Array[Yasminaai::Types::Policy] }, optional: true, nullable: false

      field :first_page_url, -> { String }, optional: true, nullable: false

      field :from, -> { Integer }, optional: true, nullable: false

      field :last_page, -> { Integer }, optional: true, nullable: false

      field :last_page_url, -> { String }, optional: true, nullable: false

      field :links, -> { Internal::Types::Array[Yasminaai::Types::PaginationLink] }, optional: true, nullable: false

      field :next_page_url, -> { String }, optional: true, nullable: false

      field :path, -> { String }, optional: true, nullable: false

      field :per_page, -> { Integer }, optional: true, nullable: false

      field :prev_page_url, -> { String }, optional: true, nullable: false

      field :to, -> { Integer }, optional: true, nullable: false

      field :total, -> { Integer }, optional: true, nullable: false

      field :aggregates, -> { Yasminaai::Types::PolicyAggregates }, optional: true, nullable: false
    end
  end
end
