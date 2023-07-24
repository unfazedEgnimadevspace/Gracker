class AddDefaultFalseToCompleted < ActiveRecord::Migration[7.0]
  def change
    change_column :planned_workouts, :completed, :boolean, :default => false
  end
end
