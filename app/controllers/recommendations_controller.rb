class RecommendationsController < ApplicationController
  before_action :set_recommendation, only: [:destroy]

  # GET /recommendations
  def index
    @recommendations = Recommendation.all
  end

  # GET /recommendations/new
  def new
    @recommendation = Recommendation.new
  end

  # POST /recommendations
  def create
    @recommendation = Recommendation.new(recommendation_params)
    @recommendation.user_id = current_user.id

    if @recommendation.save
      redirect_to root_path, notice: 'Thanks for the recommendation!  Stay tuned!'
    else
      render :new
    end
  end

  # DELETE /recommendations/1
  def destroy
    @recommendation.destroy
    redirect_to root_path, notice: 'That recommendation has been deleted.'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_recommendation
      @recommendation = Recommendation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recommendation_params
      params.require(:recommendation).permit(:tool_name, :description, :user_id, :archived)
    end
end
