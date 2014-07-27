# require 'spec_helper'
require 'rails_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do

      # Uses the Capybara function `visit` to simulate visiting the URI
      # /static_pages/home in a browser
      visit '/static_pages/home'

      # Uses the page variable (also provided by Capybara) to test that
      # the resulting page has the right content.      
      expect(page).to have_content('Sample App')
    end
  end
end

# require 'rails_helper'
#
# RSpec.describe "StaticPages", :type => :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response.status).to be(200)
#     end
#   end
# end