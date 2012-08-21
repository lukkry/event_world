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
      it "publish event" do
        Event.any_instance.should_receive(:publish)
        ew_post :notify, longitude: 1, latitude: 2
      end
    end
  end
end
