require 'slack-incoming-webhooks-ruby'

url = ENV['SLACK_WEBHOOK_URL']
slack = Slack::IncomingWebhooks::Client.new(url)
payload = Slack::Messages::Payload.new
# payload.text = 'sample text'
attachment = Slack::Messages::Attachment.new
attachment.fallback = 'sample fallback'
attachment.color = 'good'
attachment.title = 'sample title'
attachment.footer = 'from sample'

field = Slack::Messages::Field.new
field.title = "sample field"
field.value = 'http://github.com'

field2 = Slack::Messages::Field.new
field2.title = "sample field2"
field2.value = 'http://github2.com'

attachment.fields = [field, field2]
payload.attachments = [attachment]

slack.post(payload)
