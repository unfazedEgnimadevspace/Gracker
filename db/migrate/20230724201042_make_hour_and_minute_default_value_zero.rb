class MakeHourAndMinuteDefaultValueZero < ActiveRecord::Migration[7.0]
  def change
    change_column :planned_workouts, :hours, :integer, :default => 0
    change_column :planned_workouts, :minutes, :integer, :default => 0
  end
end
