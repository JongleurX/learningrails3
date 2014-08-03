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
 
    # Page content tests
    it { expect(page).to have_selector('h1',    text: heading) }
    it { expect(page).to have_title full_title(page_title) }

  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { expect(page).to_not have_title '| Home' }

    # Link destination tests
    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      expect(page).to have_title full_title('About Us')
      click_link "Help"
      expect(page).to have_title full_title('Help')
      click_link "Contact"
      expect(page).to have_title full_title('Contact')
      click_link "Home"
      click_link "Sign up now!"
      expect(page).to have_title full_title('Sign up')
      click_link "sample app"
      expect(page).to have_title full_title('')
    end
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