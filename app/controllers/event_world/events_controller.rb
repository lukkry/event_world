require_dependency "event_world/application_controller"

module EventWorld
  class EventsController < ApplicationController
    def index
    end

    def init_data
      client = Faye::Client.new(EwConfig.faye_path)
      client.publish('/events', { lat: 51.930718, long: 19.226074 })
      render text: :nothing
    end
  end
end
