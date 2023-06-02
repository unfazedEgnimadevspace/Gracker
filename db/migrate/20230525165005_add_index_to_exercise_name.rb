class AddIndexToExerciseName < ActiveRecord::Migration[7.0]
  def change
    add_index :exercises, :name
  end
end
