require 'spec_helper'

module EventWorld
  describe PositionFinder do
    let(:url) { "http://freegeoip.net/json/0.0.0.0" }
    let(:json_response) { File.new(File.dirname(File.expand_path(__FILE__)) + "/../../json/freegeoip.json") }

    it "get json for particular IP address" do
      stub_request(:get, url).to_return body: "hello world"
      PositionFinder.new("0.0.0.0").get_json.should eq "hello world"
    end

    it "return Hash with latitude and longitude" do
      stub_request(:get, url).to_return body: json_response
      res = PositionFinder.new("0.0.0.0").query
      res["longitude"].should eq "21"
      res["latitude"].should eq "52.25"
    end
  end
end
