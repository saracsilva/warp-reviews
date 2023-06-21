class UsersController < ApplicationController
  def my_reviews
    @reviews = Review.where(user_id: current_user.id)
    
    
    
  end
  def find_series_title(series_id)
    STAR_TREK_SERIES.each do |key, data|
      return data[:title] if data[:id] == series_id
  end
    return nil # Series ID not found
  end
  private
  def series_name_for_id(series_id)
  series_key = STAR_TREK_SERIES.find { |key, data| data[:id] == series_id.to_i }
  series_key&.first
  end
 
end
