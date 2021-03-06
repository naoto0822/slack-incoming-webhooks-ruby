module Slack
module IncomingWebhooks
  class Client
    def initialize(url)
      @url = url
    end

    def post(payload)
      Slack::Http::Connection.send(@url, payload.to_params)
    end
  end # Client
end # IncomingWebhooks
end # Slack
