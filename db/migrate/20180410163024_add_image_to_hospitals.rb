class AddImageToHospitals < ActiveRecord::Migration[5.1]
  def change
    add_column :hospitals, :image, :string
  end
end
