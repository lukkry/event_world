require 'spec_helper'

module EventWorld
  describe EventsController do
    describe "GET 'index'" do
      it "returns http success" do
        get :index, use_route: :event_world
        expect(response).to be_success
      end
    end

    describe "GET 'init_data'" do
      it "accepts only json format" do
        get :init_data, format: :json, use_route: :event_world
        expect(response).to be_success
      end

      it "not accept other formats than json" do
        get :init_data, use_route: :event_world
        expect(response.code).to eq "406"
      end
    end
  end
end
