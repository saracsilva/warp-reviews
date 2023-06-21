class SeriesController < ApplicationController
  def index
    @series = STAR_TREK_SERIES
  end

  def show
    @series_name = params[:series_name]
  end

  
end