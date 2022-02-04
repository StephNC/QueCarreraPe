class BookingRequest < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_one_attached :photo
end
