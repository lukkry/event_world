require 'open-uri'

module EventWorld
  class PositionFinder
    GEO_URL = "http://freegeoip.net/json/"

    def initialize ip
      @ip = ip
      @geo_url = GEO_URL + @ip
    end

    def query
      JSON.parse(get_json)
    end

    def get_json
      open(@geo_url).read
    end
  end
end
