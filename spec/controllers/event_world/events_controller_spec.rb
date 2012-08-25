require 'spec_helper'

module EventWorld
  describe EventsController do
    describe "GET 'index'" do
      it "returns http success" do
        ew_get :index
        expect(response).to be_success
      end
    end
  end
end
