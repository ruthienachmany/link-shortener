class Link < ActiveRecord::Base
  attr_accessible :short_link, :long_link, :user_id
  belongs_to :user

  def convert_link(link)
    @link.long_link = link
    
  end


end
