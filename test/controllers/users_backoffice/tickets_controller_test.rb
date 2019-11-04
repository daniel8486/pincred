require 'test_helper'

class UsersBackoffice::TicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_tickets_index_url
    assert_response :success
  end

end
