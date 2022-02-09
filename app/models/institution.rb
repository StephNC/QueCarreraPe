class Institution < ApplicationRecord
  has_many :career_institutions
  has_one_attached :photo

  # has_many :careers, through: :career_institutions


  validates :name, presence: true, length: { minimum: 2 }
  validates :address, presence: true
  validates :phone, presence: true, length: { minimum: 5 }
  validates :email, presence: true
  validates :url, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
