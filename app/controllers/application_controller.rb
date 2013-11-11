class ApplicationController < ActionController::Base
  protect_from_forgery

#   private

#   def current_user
#     @current_user ||= session[:current_user_id] &&
#       User.find_by(id: session[:current_user_id])
#   end

# end

   def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # def show
  #   if Link.find(params[:id])
  #   # your code goes here
  #     redirect_to "#{@link.long_link}", :status => :301 
  #   end
  # end
  
  helper_method :current_user


end
