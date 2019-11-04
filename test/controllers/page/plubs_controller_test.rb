require 'test_helper'

class Page::PlubsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_plubs_index_url
    assert_response :success
  end

end
