class CreateCalories < ActiveRecord::Migration[7.0]
  def change
    create_table :calories do |t|
      t.integer :user_id
      t.string :food_name
      t.integer :calories
      t.datetime :consumed_at
      t.text :notes
      t.string :meal_type

      t.timestamps
    end
  end
end
