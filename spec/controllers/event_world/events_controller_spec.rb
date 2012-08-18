require 'spec_helper'

module EventWorld
  describe EventsController do
    describe "GET 'index'" do
      it "returns http success" do
        ew_get :index
        expect(response).to be_success
      end
    end

    describe "POST 'notify'" do
      it "" do
        Faye::Client.any_instance.should_receive(:publish).with("/events", { long: "1", lat: "2" })
        ew_post :notify, longitude: 1, latitude: 2
      end
    end
  end
end
