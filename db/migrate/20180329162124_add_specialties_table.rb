class AddSpecialtiesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :specialties do |t|
      t.string :en_name
      t.string :ar_name
      t.timestamps
    end
  end
end
