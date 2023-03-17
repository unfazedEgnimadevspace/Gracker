class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :body_part
      t.string :equipment
      t.string :gif_url
      t.string :target

      t.timestamps
    end
  end
end
