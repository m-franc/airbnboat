class AddPeopleToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :people, :integer
  end
end
