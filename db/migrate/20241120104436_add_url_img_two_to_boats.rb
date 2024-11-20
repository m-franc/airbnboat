class AddUrlImgTwoToBoats < ActiveRecord::Migration[7.1]
  def change
    add_column :boats, :url_img_two, :string
  end
end
