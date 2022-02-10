class Career < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :career_institutions
  has_many :institutions, through: :career_institutions
  has_one_attached :photo

  validates :name, presence: true, length: { minimum: 2 }
  validates :area, presence: true
  validates :duration, presence: true
  validates :profile, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  include PgSearch::Model
  pg_search_scope :search_by_name_and_area,
    against: [ :name, :area ],
    using: {
      tsearch: { prefix: true }
    }
end
