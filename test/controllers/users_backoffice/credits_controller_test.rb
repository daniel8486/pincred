require 'test_helper'

class UsersBackoffice::CreditsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_credits_index_url
    assert_response :success
  end

end
