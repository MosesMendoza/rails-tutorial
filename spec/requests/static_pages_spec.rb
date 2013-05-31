require 'spec_helper'

describe "Static pages" do
  let(:t){ "Sample App" }

  describe "Home page" do
    it "should have the h1 '#{t}'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => '#{t}')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{t} | Home")
    end
  end

  describe "Contact page" do
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{t} | Contact")
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{t} | Help")
    end
  end

  describe "About page" do
    it "should have the h1 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About us')
    end
    it "should have the title 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{t} | About us")
    end
  end

end