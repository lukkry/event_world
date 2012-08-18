module EventWorld
  class Event
    attr_accessor :longitude, :latitude

    def initialize options
      @longitude = options[:longitude]
      @latitude = options[:latitude]
    end
  end
end
