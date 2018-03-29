class CreateDoctorsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :en_name
      t.string :ar_name
      t.string :image
      t.text :en_bio
      t.text :ar_bio
      t.text :en_schedule
      t.text :ar_schedule
      t.integer :hospital_id
      t.timestamps
    end
  end
end
