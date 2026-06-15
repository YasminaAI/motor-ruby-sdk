# frozen_string_literal: true

module Yasminaai
  module Policies
    class Client
      # @param client [Yasminaai::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Show a specific policy
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :car_policy
      #
      # @return [Yasminaai::Types::Policy]
      def show_policy(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "policies/#{URI.encode_uri_component(params[:car_policy].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Yasminaai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Yasminaai::Types::Policy.load(response.body)
        else
          error_class = Yasminaai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Listing requested policies
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :quote_request_id
      # @option params [String, nil] :quote_price_id
      # @option params [Integer, nil] :provider_policy_id
      # @option params [String, nil] :car_sequence_number
      # @option params [String, nil] :new_owner_id
      # @option params [String, nil] :previous_owner_id
      # @option params [Integer, nil] :status
      # @option params [Integer, nil] :min_price
      # @option params [Integer, nil] :max_price
      # @option params [Integer, nil] :per_page
      #
      # @return [Array[Yasminaai::Types::Policy]]
      def list_policies(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["quote_request_id"] = params[:quote_request_id] if params.key?(:quote_request_id)
        query_params["quote_price_id"] = params[:quote_price_id] if params.key?(:quote_price_id)
        query_params["provider_policy_id"] = params[:provider_policy_id] if params.key?(:provider_policy_id)
        query_params["car_sequence_number"] = params[:car_sequence_number] if params.key?(:car_sequence_number)
        query_params["new_owner_id"] = params[:new_owner_id] if params.key?(:new_owner_id)
        query_params["previous_owner_id"] = params[:previous_owner_id] if params.key?(:previous_owner_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["min_price"] = params[:min_price] if params.key?(:min_price)
        query_params["max_price"] = params[:max_price] if params.key?(:max_price)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)

        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "policies",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Yasminaai::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Yasminaai::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # For issuing a new policy
      #
      # @param request_options [Hash]
      # @param params [Yasminaai::Policies::Types::PostPoliciesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Yasminaai::Types::Policy]
      def issue_policy(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "policies",
          body: Yasminaai::Policies::Types::PostPoliciesRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Yasminaai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Yasminaai::Types::Policy.load(response.body)
        else
          error_class = Yasminaai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
