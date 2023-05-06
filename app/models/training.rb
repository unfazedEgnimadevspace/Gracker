#This model records the id of the specific exercise done, the number of reps done, numbers of sets done, weight carried in decimals
class Training < ApplicationRecord
    belongs_to :exercise
    validates :number_of_sets, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10 }
    validates :number_of_reps, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 100}
end
