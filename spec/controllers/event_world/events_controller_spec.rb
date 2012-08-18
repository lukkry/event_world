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
      before :each do
        Faye::Client.any_instance.stub(:publish)
        stub_request(:post, "http://localhost:9292/faye").to_return(status: 200, body: "", headers: {})
      end

      it "be success" do
        ew_get :init_data, format: :json
        expect(response).to be_success
      end
    end
  end
end
