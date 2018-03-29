class RelateDoctorToDepartmentInsteadOfHospital < ActiveRecord::Migration[5.1]
  def up
    remove_column :doctors, :hospital_id
    add_column :doctors, :department_id, :integer
  end

  def down
    remove_column :doctors, :department_id
    add_column :doctors, :hospital_id, :integer
  end
end
