require 'rails_helper'

RSpec.describe "Flashes", type: :request do
  describe "GET /dismiss" do
    it "returns http success" do
      get "/flash/dismiss"
      expect(response).to have_http_status(:success)
    end
  end

end
