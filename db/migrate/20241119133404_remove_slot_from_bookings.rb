class RemoveSlotFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :slot, :string
  end
end
