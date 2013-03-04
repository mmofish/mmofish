require 'spec_helper'

describe "Static pages" do

  subject { page }
 
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end  
   
  describe "Home page" do
    
    before { visit root_path }
    let(:heading)    { '' }
    let(:page_title) { '' }
    
    
    it_should_behave_like "all static pages" 
    it { should_not have_selector('title', text: '| Home') }
  end

    describe "About page" do
    
    before { visit about_path }
    let(:heading)    { 'About Us' }
    let(:page_title) { 'About Us' }
    
    it_should_behave_like "all static pages" 
  end

    describe "Contact page" do
        
    before { visit contact_path }
    let(:heading)    { 'Contact Us' }
    let(:page_title) { 'Contact Us' }
    
    it_should_behave_like "all static pages"
  end
  
    describe "Testing Area" do
        
    before { visit testing_path }
    let(:heading)    { 'Testing Area' }
    let(:page_title) { 'Testing Area' }
    
    it_should_behave_like "all static pages"
  end
end