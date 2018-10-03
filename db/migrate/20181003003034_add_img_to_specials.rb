class AddImgToSpecials < ActiveRecord::Migration[5.2]
  def change
    add_column :specials, :image_url, :string
    add_column :specials, :run_time, :integer
  end
end
