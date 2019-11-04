require 'test_helper'

class UsersBackoffice::TaxsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_taxs_index_url
    assert_response :success
  end

end
