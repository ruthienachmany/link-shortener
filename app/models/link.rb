class Link < ActiveRecord::Base
  attr_accessible :short_link, :long_link, :user_id
  belongs_to :user

  def return_random_string
    array = ('A'..'Z').to_a + ('a'..'z').to_a
    @random_string = array.shuffle[0,8].join
  end

   def get_short_url(link)
    "http://localhost3000/#{link.short_link}"
  end
  #   @link = link
  #   link.long_link = params[:link]
  #   link.short_link = @random_string
  #   link.user_id = params[:user]
  # end

end
