require 'test_helper'

class Page::ProdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_prods_index_url
    assert_response :success
  end

end
