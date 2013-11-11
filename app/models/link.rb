class Link < ActiveRecord::Base
  attr_accessible :short_link, :long_link, :user_id
  belongs_to :user

  ALL_SHORTENED_LINKS = []

  def randomly_generated_short_link
    array = ('A'..'Z').to_a + ('a'..'z').to_a
    @randomly_generated_short_link = array.shuffle[0,8].join
    ALL_SHORTENED_LINKS << @randomly_generated_short_link
    # if ALL_SHORTENED_LINKS.find {|link| link == @randomly_generated_short_link}
    #   @new_randomly_generated_short_link = array.shuffle[0,8].join

      # @randomly_generated_short_link = array.shuffle[0,8].join
    # if @randomly_generated_short_link = array.shuffle[0,8].join unless ALL_SHORTENED_LINKS.find {|link| link == @randomly_generated_short_link}
  end

  #  def get_short_url(link)
  #   "http://localhost3000/#{link.short_link}"
  # end
  #   @link = link
  #   link.long_link = params[:link]
  #   link.short_link = @random_string
  #   link.user_id = params[:user]
  # end

end
