# frozen_string_literal: true

module Yasminaai
  class Client
    # @param token [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, max_retries: 2)
      @raw_client = Yasminaai::Internal::Http::RawClient.new(
        base_url: base_url || Yasminaai::Environment::SANDBOX,
        headers: {
          "User-Agent" => "yasmina-motor-ruby/0.1.0",
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end

    # @return [Yasminaai::Quotes::Client]
    def quotes
      @quotes ||= Yasminaai::Quotes::Client.new(client: @raw_client)
    end

    # @return [Yasminaai::Policies::Client]
    def policies
      @policies ||= Yasminaai::Policies::Client.new(client: @raw_client)
    end

    # @return [Yasminaai::OtPs::Client]
    def ot_ps
      @ot_ps ||= Yasminaai::OtPs::Client.new(client: @raw_client)
    end
  end
end
