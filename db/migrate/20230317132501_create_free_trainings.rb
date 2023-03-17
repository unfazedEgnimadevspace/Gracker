class CreateFreeTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :free_trainings do |t|
      t.string :bodyPart
      t.string :equipment
      t.string :gifUrl
      t.string :name
      t.string :target

      t.timestamps
    end
  end
end
