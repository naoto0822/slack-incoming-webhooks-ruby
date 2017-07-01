require 'spec_helper'

RSpec.describe Slack::Messages::Attachment do
  it 'correct init' do
    a = Slack::Messages::Attachment.new
    expect(a).not_to be nil
  end

  it 'correct parameter' do
    a = Slack::Messages::Attachment.new
    a.fallback = 'hoge'
    a.text = 'text'
    a.footer = 'footer'
    params = a.to_params
    expect(params['fallback']).to eq 'hoge'
    expect(params['text']).to eq 'text'
    expect(params['footer']).to eq 'footer'
  end
end
