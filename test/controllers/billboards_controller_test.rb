require 'test_helper'

class BillboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billboards_index_url
    assert_response :success
  end

  test "should get show" do
    get billboards_show_url
    assert_response :success
  end

  test "should get new" do
    get billboards_new_url
    assert_response :success
  end

end
