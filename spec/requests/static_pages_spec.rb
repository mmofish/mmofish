require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    
    it "should have the h1 'mmofish'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'mmofish')
    end
    
    it "should have the base title" do 
    visit '/static_pages/home'
    page.should have_selector('title',
      :text => "Swimming with mmofish")
    end
    
    it "should not have a custom title" do 
    visit '/static_pages/home'
    page.should_not have_selector('title', :text => '| Home')
    
    end
  end
 
  
  
  describe "About page" do
      
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "should have the title 'About Us'" do 
    visit '/static_pages/about'
    page.should have_selector('title',
      :text => "Swimming with mmofish | About Us")
   end
end

  describe "Contact page" do
        
      it "should have the h1 'Contact'" do
        visit '/static_pages/contact'
        page.should have_selector('h1', :text => 'Contact')
      end
      
      it "should have the title 'Contact'" do 
      visit '/static_pages/contact'
      page.should have_selector('title',
        :text => "Swimming with mmofish | Contact")
     end
  end
end