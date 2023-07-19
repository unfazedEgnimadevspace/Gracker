class AddUserIdToTrainingModel < ActiveRecord::Migration[7.0]
  def change
    add_column :trainings, :user_id, :integer
  end
end
