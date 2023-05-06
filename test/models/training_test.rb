require "test_helper"

class TrainingTest < ActiveSupport::TestCase
  setup do
    @training = Training.new(weight: 101, number_of_sets: 7, number_of_reps: 30, exercise_time: Time.now, exercise_id: 1)
  end

  test "Number of reps should not be more than 100" do
    @training.number_of_reps = 101 
    assert_not @training.valid?
  end
  test "Number of sets should not be more than ten" do
    @training.number_of_sets  = 11
    assert_not @training.valid?
  end
end
