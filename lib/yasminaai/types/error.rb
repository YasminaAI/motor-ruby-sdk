# frozen_string_literal: true

module Yasminaai
  module Types
    class Error < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
