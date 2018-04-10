class AddColumnImageToDepartment < ActiveRecord::Migration[5.1]
  def change
    add_column :departments, :image, :string
  end
end
