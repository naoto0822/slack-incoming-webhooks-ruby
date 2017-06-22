module Slack
module Messages
  class Payload
    PAYLOAD_PARAMS = %i[
      channel
      text parse
      link_names
      attachments
      unfurl_links
      unfurl_media
      username
      as_user
      icon_url
      icon_emoji
      thread_ts
      reply_broadcast
    ].freeze

    attr_accessor *PAYLOAD_PARAMS

    def to_params
      params = {}
      PAYLOAD_PARAMS.each { |p|
        if "#{p}" == 'attachments'
          attachments = []
          @attachments.each { |a| attachments.push(a.to_params) } unless @attachments.nil?
          params['attachments'] = attachments unless attachments.empty?
          next
        end
        params["#{p}"] = send(p) unless send(p).nil?
      }
      params
    end
  end # Payload
end # Messages
end # Slack
