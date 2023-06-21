# frozen_string_literal: true

class MyReviewComponent < ViewComponent::Base
  def initialize(review, title)
    @review = review
    @title = title
  end

end
