require "test_helper"

class App::CaloriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_calories_index_url
    assert_response :success
  end

  test "should get show" do
    get app_calories_show_url
    assert_response :success
  end

  test "should get new" do
    get app_calories_new_url
    assert_response :success
  end

  test "should get edit" do
    get app_calories_edit_url
    assert_response :success
  end
end
