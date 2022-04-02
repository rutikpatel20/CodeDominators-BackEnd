require "test_helper"

class BoothsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get booths_new_url
    assert_response :success
  end
end
