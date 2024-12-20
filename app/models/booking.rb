class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :user_id, presence: true
  validates :boat_id, presence: true
  validates :start_date, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "doit être au format YYYY-MM-DD" }
  validates :end_date, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "doit être au format YYYY-MM-DD" }
  validates :people, numericality: { only_integer: true }, presence: true
  validates :total_price, numericality: { only_integer: true }, presence: true
end
