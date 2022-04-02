require "test_helper"

class StallsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get stalls_new_url
    assert_response :success
  end

  test "should get show" do
    get stalls_show_url
    assert_response :success
  end

  test "should get edit" do
    get stalls_edit_url
    assert_response :success
  end
end
