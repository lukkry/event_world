require_dependency "event_world/application_controller"

module EventWorld
  class EventsController < ApplicationController
    before_filter :set_faye_client

    def index
    end

    def notify
      publish_event Event.new(params)
      render text: :nothing
    end

    private

    def set_faye_client
      @faye_client ||= Faye::Client.new(EwConfig.faye_path)
    end

    def publish_event event
      @faye_client.publish('/events', { long: event.longitude, lat: event.latitude })
    end
  end
end
