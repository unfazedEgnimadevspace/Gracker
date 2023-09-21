class AddSetsAndRepsToPlannedWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :planned_workouts, :sets, :integer
    add_column :planned_workouts, :reps, :integer
  end
end
