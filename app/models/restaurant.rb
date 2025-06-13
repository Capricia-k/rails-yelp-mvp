class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "french", "japanese", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
