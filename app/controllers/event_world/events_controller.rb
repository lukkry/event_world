require_dependency "event_world/application_controller"

module EventWorld
  class EventsController < ApplicationController
    respond_to :json, only: [:init_data]

    def index
    end

    def init_data
      respond_with({ "zomg3@lol.com" => "91.207.15.105", "zomg4@lol.com" => "89.73.68.81" })
    end
  end
end
