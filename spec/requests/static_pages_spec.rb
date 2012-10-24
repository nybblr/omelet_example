require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Home'" do
    	visit '/static_pages/home'
    	page.should have_content('Sample App')
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

  	it "should have the right title" do
    	visit '/static_pages/help'
    	page.should have_selector('title', :text => "Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end

  	it "should have the right title" do
    	visit '/static_pages/about'
    	page.should have_selector('title', :text => "About Us")
    end
  end
end

