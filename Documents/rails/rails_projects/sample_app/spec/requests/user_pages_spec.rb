require 'spec_helper'
require 'rails_helper'
require 'rspec/its'

describe "User pages" do
  subject{page}
  describe "signup page" do
    before{visit signup_path}
    it {should have_selector('h1', text:'Sign up')}
    it {expect(page).to have_title "Sign up"}
  end
end
