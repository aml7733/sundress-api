require "rails_helper"

RSpec.describe 'RunwayModels API', type: :request do
  let!(:runway_models) { create_list(:runway_model, 10) }

  describe 'GET /runway_models' do
    before { get "/runway_models" }

    it "returns runway_models" do
      expect(json).not_to be_empty
      expect(json.size).to be(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /runway_models" do
    before { post "/runway_models" } #options for post #}

    context "valid parameters" do
      it "creates a new runway model" do
        
      end
    end

    context "invalid parameters" do
      it "raises error" do

      end
    end
  end
end
