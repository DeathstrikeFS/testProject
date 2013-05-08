require 'spec_helper'

describe "Static Pages" do

describe "Home Page" do
    it "should have content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # visit is a Capybara call to simulate visiting URI /static_pages/home  
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
end

describe "Help Page" do
	it "should have content 'Help'" do
	visit '/static_pages/help'
	page.should have_content('Help')
	end
end

describe "About Page" do
	it "should have content 'About'" do
	visit '/static_pages/about'
	page.should have_content('About')
	end
end

describe "title test home" do
	it "should have the right title" do
	visit '/static_pages/home'
       	page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
	end
end

describe "title test help" do
	it "should have the right title" do
	visit '/static_pages/help'
       	page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
	end
end

describe "title test about" do
	it "should have the right title" do
	visit '/static_pages/about'
       	page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
	end
end


end
