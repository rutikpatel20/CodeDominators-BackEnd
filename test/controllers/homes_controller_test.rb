require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get homes_home_url
    assert_response :success
  end

  test "should get index" do
    get homes_index_url
    assert_response :success
  end
end
