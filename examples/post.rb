require 'slack-incoming-webhooks-ruby'

url = ENV['SLACK_WEBHOOK_URL']
slack = Slack::IncomingWebhooks::Client.new(url)
payload = Slack::Messages::Payload.new
payload.text = 'test text'
attachment = Slack::Messages::Attachment.new
attachment.fallback = 'fallback sample'
attachment.color = 'good'
attachment.title = 'test post'
attachment.footer = 'from sample'
payload.attachments = [attachment]

slack.post(payload)
