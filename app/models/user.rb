class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :foods, dependent: :destroy      
  has_many :trainings, dependent: :destroy
  has_many :planned_workouts, dependent: :destroy
  has_one_attached :avatar
end
