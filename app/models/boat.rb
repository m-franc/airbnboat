class Boat < ApplicationRecord
  has_many :bookings
  has_many :reviews

  validates :content, presence: true, length: { minimum: 1 }
  validates :name, presence: true
  validates :capacity, numericality: { only_integer: true }, presence: true
  validates :size, presence: true, numericality: true
  validates :daily_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :location, presence: true
end
