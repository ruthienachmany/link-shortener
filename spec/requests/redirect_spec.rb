require 'spec_helper'

describe "Redirect" do
    expect(:get => "/IJYGWHqM").to route_to(
    :controller => "get")
    response.status.should be(302)
  end
end
