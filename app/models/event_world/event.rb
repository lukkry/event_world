module EventWorld
  class Event
    attr_accessor :longitude, :latitude, :body

    def initialize options
      @longitude = options[:longitude]
      @latitude = options[:latitude]
      @body = options[:body]
    end

    def publish
      faye_client.publish '/events', { long: @longitude, lat: @latitude, body: @body }
    end

    private

    def faye_client
      Faye::Client.new(EwConfig.faye_path)
    end
  end
end
