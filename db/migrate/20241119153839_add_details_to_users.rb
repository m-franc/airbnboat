class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :photo_profil, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :rating, :integer
  end
end
