require 'spec_helper'

module EventWorld
  describe Event do
    it "expose longitude and latitude" do
      event = Event.new({ longitude: 1, latitude: 2 })
      expect(event.longitude).to eq 1
      expect(event.latitude).to eq 2
    end
  end
end
