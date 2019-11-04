require 'test_helper'

class Page::MoneysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_moneys_index_url
    assert_response :success
  end

end
