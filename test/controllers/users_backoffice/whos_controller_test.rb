require 'test_helper'

class UsersBackoffice::WhosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_whos_index_url
    assert_response :success
  end

end
