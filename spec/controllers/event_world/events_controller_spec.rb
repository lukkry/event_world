require 'spec_helper'

module EventWorld
  describe EventsController do
    describe "GET 'index'" do
      it "returns http success" do
        ew_get :index
        expect(response).to be_success
      end
    end

    describe "GET 'init_data'" do
      it "accepts only json format" do
        ew_get :init_data, format: :json
        expect(response).to be_success
      end

      it "not accept other formats than json" do
        ew_get :init_data
        expect(response.code).to eq "406"
      end
    end
  end
end
