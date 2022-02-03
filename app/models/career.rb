class Career < ApplicationRecord
  has_many :reviews
  has_many :career_institutions
  has_one_attached :photo

  validates :name, presence: true, length: { minimum: 2 }
  validates :area, presence: true
  validates :duration, presence: true
  validates :profile, presence: true
  validates :description, presence: true, length: { maximum: 500 }
end
