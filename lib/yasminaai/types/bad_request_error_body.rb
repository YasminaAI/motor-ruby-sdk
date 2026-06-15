# frozen_string_literal: true

module Yasminaai
  module Types
    class BadRequestErrorBody < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
