require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get auth_index" do
    get users_auth_index_url
    assert_response :success
  end

end
