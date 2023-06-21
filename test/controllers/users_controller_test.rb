require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get my_reviews" do
    get users_my_reviews_url
    assert_response :success
  end
end
