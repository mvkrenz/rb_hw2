require 'rails_helper'

#  describe "Join us link removed" do
#    it "renders the index template" do
 #     get signup_path
      #     expect(response.body).not_to include("Not a REN-ISAC Member yet? Join Us!")

#      expect(:get => "/").to route_to(:controller => "welcome")

#    end
#  end

RSpec.describe "Front page text", type: :request do
  describe "GET /signup" do
    it "works! (now write some real specs)" do
      get signup_path
      expect(response.body).not_to include("Password1")
    end
  end
end


