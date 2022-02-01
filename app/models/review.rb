class Review < ApplicationRecord
  belongs_to :user
  belongs_to :career

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { 1..10 }

end
