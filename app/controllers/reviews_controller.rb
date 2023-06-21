# app/controllers/reviews_controller.rb
class ReviewsController < ApplicationController
  def create
    
    @review = Review.new(review_params)
   
    @review.user = current_user
   

    if @review.save

      flash[:notice] = "Review created successfully."
      
      series_name = series_name_for_id(params[:review][:series_id])
      redirect_path_string = "/series/#{series_name}"
      redirect_to redirect_path_string, allow_other_host: true
    else
      flash[:alert] = "Failed to create review."
      redirect_to series_path(params[:review][:series_id])
    end
  end
  def user_reviews
    @reviews = Review.where(user_id: current_user.id)
    puts @reviews.inspect
    render :user_my_reviews
  end
  private
  
  def review_params
    params.require(:review).permit(:content, :series_id)
  end
  def series_name_for_id(series_id)
  series_key = STAR_TREK_SERIES.find { |key, data| data[:id] == series_id.to_i }
  series_key&.first
  end
end
