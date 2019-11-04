require 'test_helper'

class UsersBackoffice::AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_abouts_index_url
    assert_response :success
  end

end
