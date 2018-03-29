class CreateHospitalsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :hospitals do |t|
      t.string :en_name
      t.string :ar_name
      t.integer :phone
      t.string :address
      t.float :lat
      t.float :lng
      t.integer :governorate_id
      t.timestamps
    end
  end
end
