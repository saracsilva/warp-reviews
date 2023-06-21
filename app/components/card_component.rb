# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(series:)
    @series = series
  end

  def call
    render
  end

  private

  attr_reader :series
end
