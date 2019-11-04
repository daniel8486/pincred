require 'test_helper'

class UsersBackoffice::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_products_index_url
    assert_response :success
  end

end
