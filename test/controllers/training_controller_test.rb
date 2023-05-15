require "test_helper"

class TrainingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get training_new_url
    assert_response :success
  end

  test "should get show" do
    get training_show_url
    assert_response :success
  end
end
