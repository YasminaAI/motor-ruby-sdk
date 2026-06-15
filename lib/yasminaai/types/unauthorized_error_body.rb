# frozen_string_literal: true

module Yasminaai
  module Types
    class UnauthorizedErrorBody < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
