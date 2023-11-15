class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name,:address, :category,  presence: true
  category = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: category }
end
