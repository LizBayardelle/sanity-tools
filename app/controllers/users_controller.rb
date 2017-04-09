class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@recommendations = Recommendation.where(archived: false)
  	@archived_recommendations = Recommendation.where(archived: true)
  end

  def archive
      @recommendation = Recommendation.find(params[:id])
      if @recommendation.update_attributes(archived: true)
        redirect_to :back
        flash[:notice] = "That recommendation has been archived!"
      else
        redirect_to root_path
        flash[:warning] = "Oops! Something went wrong!"
      end
    end

    def unarchive
      @recommendation = Recommendation.find(params[:id])
      if @recommendation.update_attributes(archived: false)
        redirect_to :back
        flash[:notice] = "That recommendation has been unarchived!"
      else
        redirect_to root_path
        flash[:warning] = "Oops! Something went wrong!"
      end
    end
end
