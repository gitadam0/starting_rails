require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get homeindex" do
    get home_homeindex_url
    assert_response :success
  end
end
