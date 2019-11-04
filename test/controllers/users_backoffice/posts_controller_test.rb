require 'test_helper'

class UsersBackoffice::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_posts_index_url
    assert_response :success
  end

end
