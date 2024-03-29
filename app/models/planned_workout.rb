class PlannedWorkout < ApplicationRecord
    before_save :calculate_duration_in_minutes
    validates :date, presence: true
    validates :completed, inclusion: {in: [true, false]}
    validates :duration, numericality: {greater_than: 0, allow_nil: true}
    validates :description, length: {maximum: 130, allow_nil: true}
    validates :hours, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 12 }
    validates :minutes, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 59 }
    validates :sets, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10}
    validates :reps, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 100}
    belongs_to :user

    private

    def calculate_duration_in_minutes
        self.duration = (self.hours.to_i * 60) + self.minutes
    end
end
