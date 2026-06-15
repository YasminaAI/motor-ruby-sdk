# frozen_string_literal: true

module Yasminaai
  module Policies
    module Types
      class GetPoliciesCarPolicyRequest < Internal::Types::Model
        field :car_policy, -> { Integer }, optional: false, nullable: false, api_name: "carPolicy"
      end
    end
  end
end
