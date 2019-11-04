require 'test_helper'

class UsersBackoffice::ImgsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_imgs_index_url
    assert_response :success
  end

end
