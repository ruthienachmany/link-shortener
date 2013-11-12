require 'spec_helper'
require 'factory_girl'
require 'debugger'

describe "SubmitsLink" do
  it "submits a link to be shortened"
    link = FactoryGirl.build(:link)
    visit new_link_path
    fill_in "Link", :with => link.long_link
    click_button "Submit"
  end

