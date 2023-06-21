class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :about]
  helper SeriesHelper
  protected

  def after_sign_in_path_for(resource)
    
    user_my_reviews_path
  end

  def after_sign_up_path_for(resource)
    
    user_my_reviews_path
  end
end
