class AddExerciseIdToTraining < ActiveRecord::Migration[7.0]
  def change
    add_column :trainings, :exercise_id, :integer
  end
end
