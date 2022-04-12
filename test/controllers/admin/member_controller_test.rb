require "test_helper"

class Admin::MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_member_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_member_show_url
    assert_response :success
  end
end
