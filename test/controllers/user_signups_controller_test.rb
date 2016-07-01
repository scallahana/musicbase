require 'test_helper'

class UserSignupsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_signups_new_url
    assert_response :success
  end

  test "should get create" do
    get user_signups_create_url
    assert_response :success
  end

end
