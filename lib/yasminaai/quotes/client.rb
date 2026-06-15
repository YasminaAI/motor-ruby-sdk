# frozen_string_literal: true

module Yasminaai
  module Quotes
    class Client
      # @param client [Yasminaai::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @return [Yasminaai::Types::QuoteResponse]
      def show_quote(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "quote-requests/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Yasminaai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Yasminaai::Types::QuoteResponse.load(response.body)
        else
          error_class = Yasminaai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @return [Yasminaai::Quotes::Types::DeleteQuoteRequestsIDResponse]
      def delete_quote(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "quote-requests/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Yasminaai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Yasminaai::Quotes::Types::DeleteQuoteRequestsIDResponse.load(response.body)
        else
          error_class = Yasminaai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Yasminaai::Quotes::Types::GetQuoteRequestsResponse]
      def list_quotes(request_options: {}, **_params)
        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "quote-requests",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Yasminaai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Yasminaai::Quotes::Types::GetQuoteRequestsResponse.load(response.body)
        else
          error_class = Yasminaai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # For getting prices with benefits.
      # The Quote IDs can be used later to issue a policy
      #
      # @param request_options [Hash]
      # @param params [Yasminaai::Quotes::Types::PostQuoteRequestsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Yasminaai::Types::QuoteResponse]
      def request_quotes(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "quote-requests",
          body: Yasminaai::Quotes::Types::PostQuoteRequestsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Yasminaai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Yasminaai::Types::QuoteResponse.load(response.body)
        else
          error_class = Yasminaai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
