class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum user_type: %i[orientado orientador admin]

  has_many :events
  has_many :booking_requests
  has_many :reviews

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true
  validates :age, presence: true, numericality: true, on: :account_setup
  validates :address, presence: true
  validates :user_type, presence: true
  validates :about_me, presence: true, length: { maximum: 500 }
end
