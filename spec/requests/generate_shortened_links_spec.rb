require 'spec_helper'
require 'factory_girl'

describe "GenerateShortenedLinks" do
  describe "GET /" do
    it "allows you to submit a link to be shortened" do
      get new_link_path
      response.status.should be(200)
    end
  end
end


