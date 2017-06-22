module Slack
module Messages
  class Field
    FIELD_PARAMS = %i[
      title
      value
      short
    ].freeze

    attr_accessor *FIELD_PARAMS

    def to_params
      params = {}
      FIELD_PARAMS.each { |p|
        params["#{p}"] = send(p) unless send(p).nil?
      }
      params
    end
  end # Field
end # Messages
end # Slack
