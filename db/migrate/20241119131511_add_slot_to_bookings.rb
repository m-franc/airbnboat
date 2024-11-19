class AddSlotToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :slot, :string
  end
end
