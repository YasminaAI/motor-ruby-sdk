# frozen_string_literal: true

module Yasminaai
  module OtPs
    class Client
      # @param client [Yasminaai::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # This endpoint sends a one-time password (OTP) to the provided email and phone number for quote verification. It
      # should be called before creating a quote request.
      #
      # @param request_options [Hash]
      # @param params [Yasminaai::OtPs::Types::PostQuoteOtpRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [untyped]
      def request_otp_for_quote_verification(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "quote-otp",
          body: Yasminaai::OtPs::Types::PostQuoteOtpRequest.new(params).to_h,
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

      # This endpoint sends a one-time password (OTP). It should be called before issuing a policy.
      #
      # @param request_options [Hash]
      # @param params [Yasminaai::OtPs::Types::PostIssueOtpRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [untyped]
      def request_otp_for_issuing_policy(request_options: {}, **params)
        params = Yasminaai::Internal::Types::Utils.normalize_keys(params)
        request = Yasminaai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "issue-otp",
          body: Yasminaai::OtPs::Types::PostIssueOtpRequest.new(params).to_h,
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
    end
  end
end
