require 'rails_helper'
require 'pry'

RSpec.describe ProjectApisController, type: :controller do
  describe "GET /projects_apis" do
    it "connects Sample App page" do
      get '/static_pages/home'
      expect(response).to have_http_status(200)
    end

    it "connects Sample App page" do
      get '/static_pages/help'
      expect(response).to have_http_status(200)
    end

    it "connects Sample App page" do
      get '/static_pages/about'
      expect(response).to have_http_status(200)
    end

### original test
  end
end
