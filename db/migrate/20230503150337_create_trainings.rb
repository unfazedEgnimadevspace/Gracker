class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.decimal :weight
      t.integer :number_of_sets
      t.integer :number_of_reps
      t.timestamp :exercise_time

      t.timestamps
    end
  end
end
