require 'test_helper'

class Site::InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_info_index_url
    assert_response :success
  end

end
