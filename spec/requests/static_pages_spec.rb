require 'spec_helper'

describe "Static pages" do
  let(:t){ "Sample App" }

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', :text => "#{t}") }
    it { should have_selector('title', :text => full_title) }
    it { should_not have_selector('title', :text => "| Home") }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('title', :text => full_title("Contact")) }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => full_title("Help")) }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', :text => 'About us') }
    it { should have_selector('title', :text => full_title("About us")) }
  end

end
