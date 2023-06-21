# frozen_string_literal: true

class ReviewComponent < ViewComponent::Base
  def initialize(review, email)
    @review= review
    @email = email
  end

end
