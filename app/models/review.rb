class Review < ApplicationRecord
  belongs_to :user
  belongs_to :career

  validates :content, presence: true, length: { minimum: 6 }
  validates :rating, presence: true, inclusion: 1..5

end
