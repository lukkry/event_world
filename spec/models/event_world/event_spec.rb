require 'spec_helper'

module EventWorld
  describe Event do
    let(:event){ Event.new({ longitude: 1, latitude: 2, body: "text" }) }

    it "expose longitude, latitude and body" do
      expect(event.longitude).to eq 1
      expect(event.latitude).to eq 2
      expect(event.body).to eq "text"
    end

    it "publish event to faye 'events' channer" do
      Faye::Client.any_instance.should_receive(:publish).with "/events", { long: 1, lat: 2, body: "text" }
      event.publish
    end
  end
end
