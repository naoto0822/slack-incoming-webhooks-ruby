require "spec_helper"

RSpec.describe Slack::Incoming::Webhooks::Ruby do
  it "has a version number" do
    expect(Slack::Incoming::Webhooks::Ruby::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
