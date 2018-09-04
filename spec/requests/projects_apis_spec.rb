require 'rails_helper'
require 'pry'

RSpec.describe "ProjectsApis", type: :request do
  describe "GET /projects_apis" do

    let(:base_title) { 'Ruby on Rails Tutorial Sample' }

    it "connects Sample App pages." do
#      get '/static_pages/home'
      get root_path
      expect(response).to have_http_status(200)
    end

    it "connects Help pages." do
#      get '/static_pages/help'
      get help_path
      expect(response).to have_http_status(200)
    end

    it "connects About pages." do
#      get '/static_pages/about'
      get about_path
      expect(response).to have_http_status(200)
    end

    it "connects Contact pages." do
#      get '/static_pages/contact'
      get contact_path
      expect(response).to have_http_status(200)
    end

    it "has Home title." do
      get root_path
      expect(response).to have_http_status(200)
      assert_select "title", "#{base_title}"
    end

    it "has Help title." do
      get help_path
      expect(response).to have_http_status(200)
      assert_select "title", "Help | #{base_title}"
    end
 
    it "has About title." do
      get about_path
      expect(response).to have_http_status(200)
      assert_select "title", "About | #{base_title}"
    end

    it "has Contact title." do
      get contact_path
      expect(response).to have_http_status(200)
      assert_select "title", "Contact | #{base_title}"
    end

### original test
    it "rejects wrong URI" do
      expect{get('/static/pages/hoge')}.to raise_error
    end

    it "responds with text/html formated output" do
#      get '/static_pages/home'
      get root_path
      expect(response.content_type).to eq "text/html"
    end
  end
end
