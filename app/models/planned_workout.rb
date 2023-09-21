class PlannedWorkout < ApplicationRecord
    validates :date, presence: true
    validates :completed, inclusion: {in: [true, false]}
    validates :duration, numericality: {greater_than: 0, allow_nil: true}
    validates :description, length: {maximum: 130, allow_nil: true}
    validates :hours, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 12 }
    validates :minutes, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 59 }
end
