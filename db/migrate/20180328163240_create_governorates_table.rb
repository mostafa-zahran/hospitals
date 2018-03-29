class CreateGovernoratesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :governorates do |t|
      t.string :en_name
      t.string :ar_name
      t.timestamps
    end
  end
end
