module Slack
module Http
  class Result
    attr_reader :code, :msg, :header, :body
    def initialize(code: nil, msg: nil, header: nil, body: nil)
      @code = code
      @msg = msg
      @header = header
      @body = body
    end
  end # Result
end # Http
end # Slack
