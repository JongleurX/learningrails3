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

  subject { page }

  shared_examples_for "all static pages" do
    it { expect(page).to have_selector('h1',    text: heading) }
    it { expect(page).to have_title full_title(page_title) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { expect(page).to_not have_title '| Home' }
  end

  describe "Help page" do
    before { visit help_path }
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
  end
end

##############

# describe "Static pages" do
#
#   let(:base_title) { "Ruby on Rails Tutorial Sample App" }
#
#   describe "Home page" do
#     before { visit root_path }
#
#     it "should have the h1 'Sample App'" do
#       expect(page).to have_selector('h1', :text => 'Sample App')
#     end
#
#     it "should have the base title" do
#       expect(page).to have_title "#{base_title}"
#     end
#
#     it "should not have a custom page title" do
#       expect(page).to_not have_title "#{base_title} | Home"
#     end
#
#   end
#
#   describe "Help page" do
#
#     it "should have the h1 'Help'" do
#       visit help_path
#       expect(page).to have_selector('h1', :text => 'Help')
#     end
#
#     it "should have the title 'Help'" do
#       visit help_path
#       expect(page).to have_title "#{base_title} | Help"
#     end
#   end
#
#   describe "About page" do
#
#     it "should have the h1 'About Us'" do
#       visit about_path
#       expect(page).to have_selector('h1', :text => 'About Us')
#     end
#
#     it "should have the title 'About Us'" do
#       visit about_path
#       expect(page).to have_title "#{base_title} | About Us"    end
#   end
#
#
#   describe "Contact page" do
#
#     it "should have the h1 'Contact'" do
#       visit contact_path
#       expect(page).to have_selector('h1', :text => 'Contact')
#     end
#
#     it "should have the title 'About Us'" do
#       visit contact_path
#       expect(page).to have_title "#{base_title} | Contact"    end
#   end
#
# end