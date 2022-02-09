class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum user_type: %i[orientado orientador admin]

  has_many :events
  has_many :booking_requests
  has_many :reviews
  has_one_attached :photo

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true, format: { with: /\S+[@]\S+[.]\S{2,10}/ }
  validates :age, presence: true, inclusion: { in: 1.. }
  validates :address, presence: true
  validates :user_type, presence: true
  validates :about_me, presence: true, length: { maximum: 500 }
end
