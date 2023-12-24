class Card < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 140 }
  validates :description, presence: true, length: { minimum: 3, maximum: 1000 }
end
