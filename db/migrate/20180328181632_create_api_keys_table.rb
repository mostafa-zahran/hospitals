class CreateApiKeysTable < ActiveRecord::Migration[5.1]
  def change
    create_table :api_keys do |t|
      t.string :access_key
    end
  end
end
