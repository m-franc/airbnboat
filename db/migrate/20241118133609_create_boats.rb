class CreateBoats < ActiveRecord::Migration[7.1]
  def change
    create_table :boats do |t|
      t.text :content
      t.string :location
      t.string :capacity
      t.string :size
      t.integer :daily_price

      t.timestamps
    end
  end
end
