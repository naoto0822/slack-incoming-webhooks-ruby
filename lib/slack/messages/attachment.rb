module Slack
module Messages
  class Attachment
    ATTACHMENT_PARAMS = %i[
      fallback
      color
      pretext
      author_name
      author_link
      author_icon
      title
      title_link
      text
      fields
      image_url
      thumb_url
      footer
      footer_icon
      ts
    ].freeze

    attr_accessor *ATTACHMENT_PARAMS

    def to_params
      params = {}
      ATTACHMENT_PARAMS.each { |p|
        if "#{p}" == 'fields'
          fields = []
          @fields.each { |f| fields.push(f.to_params) } unless @fields.nil?
          params['fields'] = fields
          next
        end
        params["#{p}"] = send(p) unless send(p).nil?
      }
      params
    end
  end # Attachment
end # Messages
end # Slack
