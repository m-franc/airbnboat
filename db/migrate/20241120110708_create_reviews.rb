class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.text :review
      t.float :rating

      t.timestamps
    end
  end
end
