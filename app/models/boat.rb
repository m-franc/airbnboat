class Boat < ApplicationRecord
  validates :content, presence: true, length: { minimum: 1 }
  validates :name, uniqueness: true, presence: true
  validates :capacity, numericality: { only_integer: true }, presence: true
  validates :size, presence: true, numericality: true
  validates :daily_price, numericality: { only_integer: true }, presence: true
  validates :location, presence: true
end
