require 'test_helper'

class UsersBackoffice::ImagemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_imagems_index_url
    assert_response :success
  end

end
