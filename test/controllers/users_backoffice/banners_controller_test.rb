require 'test_helper'

class UsersBackoffice::BannersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_banners_index_url
    assert_response :success
  end

end
