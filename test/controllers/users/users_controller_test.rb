require "test_helper"

class Users::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_users_index_url
    assert_response :success
  end

  test "should get show" do
    get users_users_show_url
    assert_response :success
  end
end
