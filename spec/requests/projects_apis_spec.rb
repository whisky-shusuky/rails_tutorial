require 'rails_helper'

RSpec.describe "ProjectsApis", type: :request do
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

    it "connects Contact" do
      get '/static_pages/contact'
      expect(response).to have_http_status(200)
    end

    it "connects Sample App page" do
      get '/'
      expect(response).to have_http_status(200)
    end

### original test
    it "rejects wrong URI" do
      expect{get('/static/pages/hoge')}.to raise_error
    end

    it "responds with text/html formated output" do
      get '/static_pages/home'
      expect(response.content_type).to eq "text/html"
    end
  end
end
