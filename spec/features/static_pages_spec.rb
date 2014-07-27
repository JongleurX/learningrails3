# require 'spec_helper'
require 'rails_helper'

# Uses the Capybara function `visit` to simulate visiting the URI
# /static_pages/home in a browser. 
# 
# Uses the page variable (also provided by Capybara) to test that
# the resulting page has the right content.
#
# This uses the have_selector method, which checks for an HTML element
# (the “selector”) with the given content. In other words, this makes
# sure that the <title> tag is the value specified. 

require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end