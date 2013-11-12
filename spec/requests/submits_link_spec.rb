require 'spec_helper'
require 'factory_girl'

describe "SubmitsLink" do
  it "submits a link to be shortened"
    link = FactoryGirl.create(:link)
    fill_in "Link", :with => link.long_link
    click_button "Submit"
  end


