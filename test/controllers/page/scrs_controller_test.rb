require 'test_helper'

class Page::ScrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_scrs_index_url
    assert_response :success
  end

end
