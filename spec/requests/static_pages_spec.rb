require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home' 
      
      # response.status.should be(200)
      page.should have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Damn App | Home")
    end 
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help' 
      
      # response.status.should be(200)
      page.should have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Damn App | Help")
    end
  end


  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about' 
      
      # response.status.should be(200)
      page.should have_content('About Us')
    end
      
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Damn App | About Us")
    end

=begin
    it "should have title 'About us - a little more about us'" do
      visit '/static_pages/about' 

      #page.should have_xpath("//title", :text => "About us - a little more about us")
      # find('title').native.text.should have_content("About us - a little more about us")
    end
=end

  end

end
