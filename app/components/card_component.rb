# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(name, series)
    @name = name
    @series = series
  end

  

  private

  attr_reader :series, :name
end
