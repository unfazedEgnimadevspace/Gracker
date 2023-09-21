class CreatePlannedWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :planned_workouts do |t|
      t.date :date
      t.boolean :completed
      t.integer :user_id
      t.integer :exercise_id
      t.text :description
      t.integer :hours
      t.integer :minutes
      t.integer :duration

      t.timestamps
    end
  end
end
