require_dependency "event_world/application_controller"

module EventWorld
  class EventsController < ApplicationController
    def index
    end

    def notify
      event = Event.new(params)
      event.publish
      render text: :nothing
    end
  end
end
