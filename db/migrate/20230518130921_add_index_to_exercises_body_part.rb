class AddIndexToExercisesBodyPart < ActiveRecord::Migration[7.0]
  def change
    add_index :exercises, :body_part
  end
end
