require "test_helper"

class Members::GoodControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get members_good_index_url
    assert_response :success
  end
end
