class CreateDepartmentsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :en_name
      t.string :ar_name
      t.integer :hospital_id
      t.timestamps
    end
  end
end
