require 'spec_helper'

module EventWorld
  describe PositionFinder do
    let(:url) { "http://freegeoip.net/json/0.0.0.0" }
    let(:json_response) { File.new(File.dirname(File.expand_path(__FILE__)) + "/../../json/freegeoip.json") }

    it "get json for particular IP address" do
      stub_request(:get, url).to_return body: "hello world"
      expect(PositionFinder.new("0.0.0.0").get_json).to eq "hello world"
    end

    it "return Hash with latitude and longitude" do
      stub_request(:get, url).to_return body: json_response
      res = PositionFinder.new("0.0.0.0").query
      expect(res["longitude"]).to eq "21"
      expect(res["latitude"]).to eq "52.25"
    end
  end
end
