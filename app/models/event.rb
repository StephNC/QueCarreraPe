class Event < ApplicationRecord
  belongs_to :user
  has_many :booking_requests

  validates :name, presence: true
  validates :modality, presence: true, inclusion: { in: %w[virtual presencial] }
  validates :date, presence: true
  validates :description, presence: true, length: { maximum: 500 }
end
