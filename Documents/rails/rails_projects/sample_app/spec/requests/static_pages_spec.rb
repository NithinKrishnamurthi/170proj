require 'spec_helper'
require 'rails_helper'
require 'rspec/its'

describe "Static pages" do
  subject{page}
  
  describe "Home page" do
    before {visit root_path}
    it{should have_selector('h1', :text=> 'Sample App')}
    it{expect(page).to have_title "Ruby on Rails Tutorial Sample App | Home"}
    end
  describe "Help page" do
    before{visit help_path}
    it {should have_selector('h1', :text=> 'Help')}
    it{expect(page).to have_title "Ruby on Rails Tutorial Sample App | Help"}
  end
  describe "About page" do
    before{visit about_path}
    it{page.should have_selector('h1', :text=> 'About Us')}
    it{expect(page).to have_title "Ruby on Rails Tutorial Sample App | About Us"}
  end
  describe "Contact page" do
    before{visit contact_path}
    it{page.should have_selector('h1', :text=> 'Contact')}
    it{expect(page).to have_title "Ruby on Rails Tutorial Sample App | Contact"}
  end
end