require 'rails_helper'

RSpec.describe 'Users/Vote API', type: :request do
  #create data for tests
  let!(:users) { create_list(:user, 10) }

  describe 'GET /users' do
    it "returns users" do
      expect(json).not_to be_empty
      expect(json.size).to be(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /users" do
    before { post "/users" } # + options/parameters
    context "valid parameters" do
      it "creates user object" do

      end
    end

    context "invalid parameters" do
      it "raises error" do

      end
    end
  end

  describe 'GET /users/:id/vote' do
    before  { get "/users/1/vote" }

    context "when user exists and has voted" do
      it "returns vote" do
        expect(json).not_to be_empty
        expect(json.size).to be(1)
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when user exists and has not yet voted" do
      it "returns vote not found message" do
        expect(response.errors).not_to be_empty
        byebug #need to check to see what error looks like
      end

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end
    end

    context "when user does not exist" do
      it "returns user not found message" do
        expect(response.errors).not_to be_empty
        byebug
      end

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end
    end
  end
end
