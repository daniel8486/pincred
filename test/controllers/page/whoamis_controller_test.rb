require 'test_helper'

class Page::WhoamisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_whoamis_index_url
    assert_response :success
  end

end
