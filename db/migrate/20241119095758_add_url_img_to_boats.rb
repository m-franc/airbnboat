class AddUrlImgToBoats < ActiveRecord::Migration[7.1]
  def change
    add_column :boats, :url_img, :string
  end
end
