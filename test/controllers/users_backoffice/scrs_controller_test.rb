require 'test_helper'

class UsersBackoffice::ScrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_scrs_index_url
    assert_response :success
  end

end
