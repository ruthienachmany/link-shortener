require 'spec_helper'

describe "Redirect" do
  describe "GET /" do
    it "redirects your link" do
      visit "/go"
      response.status.should be(300)
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
