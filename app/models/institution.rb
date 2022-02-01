class Institution < ApplicationRecord
  has_many :career_institutions

  validates :name, presence: true, length: { minimum: 2 }
  validates :address, presence: true
  validates :phone, presence: true, length: { is: 9 }
  validates :email, presence: true
  validates :url, presence: true
  validates :type, presence: true, inclusion: { in: %w(público privado) }
end
