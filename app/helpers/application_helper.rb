module ApplicationHelper
    def find_series_title(series_id)
        STAR_TREK_SERIES.each do |key, data|
          return data[:title] if data[:id] == series_id
        end
         return nil # Series ID not found
    end
end
