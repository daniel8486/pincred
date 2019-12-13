require 'test_helper'

class UsersBackoffice::CallsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_calls_index_url
    assert_response :success
  end

end
