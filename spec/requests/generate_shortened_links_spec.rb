require 'spec_helper'
require 'factory_girl'

describe "GenerateShortenedLinks" do
  describe "GET /" do
    it "allows you to submit a link to be shortened" do
      
      get new_link_path
      response.status.should be(200)
      page.should have_content("Nice! See your short URL below.")
    end
  end
end


