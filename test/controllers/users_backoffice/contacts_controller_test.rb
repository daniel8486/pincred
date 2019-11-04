require 'test_helper'

class UsersBackoffice::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_contacts_index_url
    assert_response :success
  end

end
