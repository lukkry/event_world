require 'spec_helper'

module EventWorld
  describe EventsController do

    describe "GET 'index'" do
      it "returns http success" do
        get 'index', use_route: :event_world
        expect(response).to be_success
      end
    end

  end
end
