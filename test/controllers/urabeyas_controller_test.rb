require "test_helper"

class UrabeyasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get urabeyas_new_url
    assert_response :success
  end

  test "should get index" do
    get urabeyas_index_url
    assert_response :success
  end

  test "should get edit" do
    get urabeyas_edit_url
    assert_response :success
  end
end
