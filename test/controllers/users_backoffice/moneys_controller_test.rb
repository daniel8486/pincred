require 'test_helper'

class UsersBackoffice::MoneysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_moneys_index_url
    assert_response :success
  end

end
