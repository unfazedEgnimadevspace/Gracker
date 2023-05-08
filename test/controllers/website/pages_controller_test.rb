require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root path" do
    get root_path
    assert_response :success
    assert_select "title", full_title("Home")
  end

  test "should get about path" do
    get about_path 
    assert_response :success
    assert_select "title", full_title("About")
  end
  test "should get pricing path" do
    get pricing_path 
    assert_response :success
    assert_select "title", full_title("Pricing")
  end
end
