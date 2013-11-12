require 'spec_helper'

describe "Redirect" do
  describe "GET/" do
    it "redirects your link" do
      link = FactoryGirl.create(:link)
      get "/#{link.short_link}"
      response.status.should be(301)
end
end

  # it "redirects the link"
  #   link = FactoryGirl.create(:link)
  #   specify { link.http_status.should == 302 }
  #   specify { response.should redirect_to("#{link.long_link}") }

  end

# describe "GenerateShortenedLinks" do
#   describe "GET /" do
#     it "allows you to submit a link to be shortened" do
#       get new_link_path
#       response.status.should be(200)
#     end
#   end
# end
