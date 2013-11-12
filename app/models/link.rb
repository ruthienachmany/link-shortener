class Link < ActiveRecord::Base
  attr_accessible :short_link, :long_link, :http_status, :visit_count

  def randomly_generated_short_link
    array = ('A'..'Z').to_a + ('a'..'z').to_a
    @randomly_generated_short_link = array.shuffle[0,8].join  
  end

end
