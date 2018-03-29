class CreateCommentsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :doctor_id
      t.integer :user_id
      t.boolean :approved
      t.timestamps
    end
  end
end
