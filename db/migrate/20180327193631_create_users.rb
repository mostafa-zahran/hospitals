# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :password_hash
      t.boolean :is_admin
      t.string :first_name
      t.string :last_name
      t.string :api_token
      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end

  def down
    drop_table :users
  end
end
