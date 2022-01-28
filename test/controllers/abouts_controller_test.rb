require "test_helper"

class AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get abt" do
    get abouts_abt_url
    assert_response :success
  end
end
