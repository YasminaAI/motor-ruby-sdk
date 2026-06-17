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
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :date_from
      # @option params [String, nil] :date_to
      # @option params [Integer, nil] :per_page
      # @option params [Boolean, nil] :include_aggregates
      #
      # @return [Yasminaai::Types::PaginatedQuoteResponse]
      def list_quotes(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["date_from"] = params[:date_from] if params.key?(:date_from)
        query_params["date_to"] = params[:date_to] if params.key?(:date_to)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)
        query_params["include_aggregates"] = params[:include_aggregates] if params.key?(:include_aggregates)

        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "quote-requests",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Yasminaai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Yasminaai::Types::PaginatedQuoteResponse.load(response.body)
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
      # @option params [Yasminaai::Quotes::Types::PostQuoteRequestsRequestAcceptLanguage, nil] :accept_language
      #
      # @return [Yasminaai::Types::QuoteResponse]
      def request_quotes(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        request_data = Yasminaai::Quotes::Types::PostQuoteRequestsRequest.new(params).to_h
        non_body_param_names = %w[Accept-Language]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["Accept-Language"] = params[:accept_language] if params[:accept_language]

        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "quote-requests",
          headers: headers,
          body: body,
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
