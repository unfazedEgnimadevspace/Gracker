class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.integer :user_id
      t.string :name
      t.string :meal_type
      t.datetime :consumed_at
      t.text :notes
      t.integer :calories

      t.timestamps
    end
  end
end
