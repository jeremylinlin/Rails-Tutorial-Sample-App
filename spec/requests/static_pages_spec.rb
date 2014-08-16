require 'spec_helper'

describe "Static pages" do


  before(:each) do #before(:each) do...end block runs before each example!....??

    @base_title = "Ruby on Rails Sample App | " 

  end

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("#{@base_title}Home")
    end

  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{@base_title}Contact")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_title("#{@base_title}About Us")
    end
  end

    describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_title("#{@base_title}Help")
    end
  end

end