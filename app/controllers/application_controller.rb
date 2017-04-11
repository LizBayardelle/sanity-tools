class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def subscriber_only 
    unless current_user && current_user.subscriber
      redirect_to root_path
      flash[:notice] = "You have to be a member to do that!"
    end
  end

  def admin_only
  	unless current_user && current_user.admin
  		redirect_to root_path
  		flash[:notice] = "Sorry, you have to be an admin to do that!"
  	end
  end
end
