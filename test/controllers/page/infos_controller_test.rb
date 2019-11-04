require 'test_helper'

class Page::InfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_infos_index_url
    assert_response :success
  end

end
