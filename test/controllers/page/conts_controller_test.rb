require 'test_helper'

class Page::ContsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get page_conts_new_url
    assert_response :success
  end

end
