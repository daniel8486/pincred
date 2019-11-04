require 'test_helper'

class UsersBackoffice::OutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_outs_index_url
    assert_response :success
  end

end
