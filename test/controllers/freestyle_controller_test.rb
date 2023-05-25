require "test_helper"

class FreestyleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get freestyle_index_url
    assert_response :success
  end
end
