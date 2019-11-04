require 'test_helper'

class UsersBackoffice::CorrespondentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_correspondent_index_url
    assert_response :success
  end

end
