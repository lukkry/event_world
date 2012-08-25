class HomeController < ApplicationController
  def index
    event = EventWorld::Event.new({ longitude: -21.868286, latitude: 64.130263 })
    event.publish
    render text: :nothing
  end
end
