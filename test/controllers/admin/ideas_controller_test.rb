require "test_helper"

class Admin::IdeasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_ideas_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_ideas_show_url
    assert_response :success
  end
end
