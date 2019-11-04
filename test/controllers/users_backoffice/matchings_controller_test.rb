require 'test_helper'

class UsersBackoffice::MatchingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_matchings_index_url
    assert_response :success
  end

end
