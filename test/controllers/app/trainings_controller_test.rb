require "test_helper"

class App::TrainingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get app_trainings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get app_trainings_destroy_url
    assert_response :success
  end
end
