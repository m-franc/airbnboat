class AddUrlImgThreeToBoats < ActiveRecord::Migration[7.1]
  def change
    add_column :boats, :url_img_three, :string
  end
end
