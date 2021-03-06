class Event < ApplicationRecord
  belongs_to :user
  has_many :booking_requests
  has_one_attached :photo

  validates :name, presence: true
  validates :modality, presence: true, inclusion: { in: %w[Presencial Virtual] }
  validates :date, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :photo, presence: true
end
