require 'test_helper'

class Page::ObsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_obs_index_url
    assert_response :success
  end

end
