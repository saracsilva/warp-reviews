# frozen_string_literal: true

class ReviewComponent < ViewComponent::Base
  def initialize(review, user_id)
    @review= review
    @user_email = User.find_by(id: user_id)&.email
  end
  def user_email
    @user_email
  end
end
