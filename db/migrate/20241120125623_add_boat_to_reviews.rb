class AddBoatToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :boat, null: false, foreign_key: true
  end
end
