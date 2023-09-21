require "test_helper"

class PlannedWorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get planned_workouts_new_url
    assert_response :success
  end

  test "should get edit" do
    get planned_workouts_edit_url
    assert_response :success
  end

  test "should get show" do
    get planned_workouts_show_url
    assert_response :success
  end

  test "should get index" do
    get planned_workouts_index_url
    assert_response :success
  end
end
