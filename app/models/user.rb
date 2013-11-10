class User < ActiveRecord::Base
  attr_accessible :email_address, :password, :password_confirmation
end
