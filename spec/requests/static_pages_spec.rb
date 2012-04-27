require 'spec_helper'

describe "Static pages" do 

	describe "Home page" do

		it "should have the h1 'Ballr Status'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text=> 'Ballr Status')
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title',
								:text => "Ballr | Home")
		end
	end

	describe "Help page" do

		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', 
									:text => "Ballr | Help")
		end
	end

	describe "About page" do
		it "should have the h1 'About'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About')
		end

		it "should have the title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title',
									:text => "Ballr | About")
		end
	end
end