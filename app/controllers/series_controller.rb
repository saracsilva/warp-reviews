class SeriesController < ApplicationController
  def index
    @series = STAR_TREK_SERIES
  end

  def show
  
    
   
    @series = find_series(STAR_TREK_SERIES, params[:name])
   
  end
  private
    def set_series
      @series = @series.find(params[:id])
    end
    def find_series(series_hash, name)
    
      series_hash.each do |title, series|
        
        return series if title == name
        
      end
      nil # Return nil if the series is not found
    end
  
end