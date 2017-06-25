require "spec_helper"

RSpec.describe Slack::IncomingWebhooks::Client do
  it "has a version number" do
    expect(Slack::VERSION).not_to be nil
  end

  it "correct init" do
    c = Slack::IncomingWebhooks::Client.new('http://google.com')
    expect(c).not_to be nil
  end
end
