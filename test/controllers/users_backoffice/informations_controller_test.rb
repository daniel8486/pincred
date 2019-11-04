require 'test_helper'

class UsersBackoffice::InformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_informations_index_url
    assert_response :success
  end

end
