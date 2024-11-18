class AddNameToBoat < ActiveRecord::Migration[7.1]
  def change
    add_column :boats, :name, :string
  end
end
