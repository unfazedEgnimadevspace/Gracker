require "test_helper"

class App::FoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_foods_index_url
    assert_response :success
  end

  test "should get show" do
    get app_foods_show_url
    assert_response :success
  end

  test "should get new" do
    get app_foods_new_url
    assert_response :success
  end

  test "should get edit" do
    get app_foods_edit_url
    assert_response :success
  end
end
