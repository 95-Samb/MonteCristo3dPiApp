require 'rails_helper'

RSpec.describe "PiEstimators", type: :request do
  describe "GET /pi_estimators" do
    it "works! (now write some real specs)" do
      get pi_estimators_path
      expect(response).to have_http_status(200)
    end
  end
end
