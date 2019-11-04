require 'test_helper'

class UsersBackoffice::PublicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_publications_index_url
    assert_response :success
  end

end
