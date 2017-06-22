module Slack
module Http
  class Connection
    def self.send(url, payload)
      if url.nil? || payload.nil? || payload.empty?
        msg = 'error: url or payload is nil.'
        return Result.new(msg: msg)
      end

      res = request(url, payload)
      Result.new(code: res.code, msg: res.message,
                 header: res.header, body: res.body)
    end

    def self.request(url, payload)
      uri = URI.parse(url)
      req = Net::HTTP::Post.new(uri.path)
      req.set_form_data(payload: payload.to_json)
      res = Net::HTTP.start(uri.host, uri.port,
                            use_ssl: uri.scheme == 'https') { |http|
        http.open_timeout = 5
        http.read_timeout = 5
        http.request(req)
      }
      res
    end
  end
end
end
