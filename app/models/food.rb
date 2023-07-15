class Food < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: {minimum:2, maximum:30}
    validates :calories, presence: true, numericality: {only_integer: true, greater_than: 0}
    validates :meal_type, presence: true
    validates :consumed_at, presence: true
    validates :notes, presence: true, length: {minimum: 5, maximum: 140}
end
