require 'spec_helper'

RSpec.describe Slack::Messages::Field do
  it 'correct init' do
    f = Slack::Messages::Field.new
    expect(f).not_to be nil
  end

  it 'correct parameter' do
    f = Slack::Messages::Field.new
    f.title = 'hoge'
    f.value = 'vavava'
    f.short = true
    params = f.to_params
    expect(params['title']).to eq 'hoge'
    expect(params['value']).to eq 'vavava'
    expect(params['short']).to eq true
  end
end
