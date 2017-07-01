require 'spec_helper'

RSpec.describe Slack::Messages::Payload do
  it 'correct init' do
    p = Slack::Messages::Payload.new
    expect(p).not_to be nil
  end

  it 'correct parameter' do
    p = Slack::Messages::Payload.new
    p.channel = 'hoge_channel'
    p.text = 'text'
    p.icon_url = 'http://localhost'
    params = p.to_params
    expect(params['channel']).to eq 'hoge_channel'
    expect(params['text']).to eq 'text'
    expect(params['icon_url']).to eq 'http://localhost'
  end
end
