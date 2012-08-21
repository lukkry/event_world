module EventWorld
  class Event
    attr_accessor :longitude, :latitude

    def initialize options
      @longitude = options[:longitude]
      @latitude = options[:latitude]
    end

    def publish
      faye_client.publish '/events', { long: @longitude, lat: @latitude }
    end

    private

    def faye_client
      Faye::Client.new(EwConfig.faye_path)
    end
  end
end
