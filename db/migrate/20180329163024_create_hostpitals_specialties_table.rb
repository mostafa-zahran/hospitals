class CreateHostpitalsSpecialtiesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :hostpitals_specialties do |t|
      t.integer :hospital_id
      t.integer :specialty_id
      t.timestamps
    end
  end
end
