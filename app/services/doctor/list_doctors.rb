class ListDoctors

  def initialize(department_id: nil)
    @department_id = department_id
  end

  def all
    Doctor.work_in_department(@department_id).all
  end
end