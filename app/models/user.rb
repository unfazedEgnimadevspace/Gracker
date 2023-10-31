class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :foods, dependent: :destroy      
  has_many :trainings, dependent: :destroy
  has_many :planned_workouts, dependent: :destroy
  has_one_attached :avatar

  def self.from_google(u)
    create_with(uid: u[:uid], name: u[:name], provider: 'google',
                password: Devise.friendly_token[0, 20]).find_or_create_by!(email: u[:email])
  end
end
