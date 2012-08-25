class HomeController < ApplicationController
  def index
    [
      [-21.868286, 64.130263],
      [16.924438, 52.409791],
      [-122.404175, 37.771583]
    ].each do |geo|
      event = EventWorld::Event.new({ longitude: geo[0], latitude: geo[1], body: "simple text" })
      event.publish
    end
    render text: :nothing
  end
end
