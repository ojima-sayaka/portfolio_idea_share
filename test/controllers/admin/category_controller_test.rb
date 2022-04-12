require "test_helper"

class Admin::CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_category_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_category_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_category_edit_url
    assert_response :success
  end
end
