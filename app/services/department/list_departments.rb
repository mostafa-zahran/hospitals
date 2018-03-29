class ListDepartments

  def initialize(in_hospital: nil)
    @in_hospital = in_hospital
  end

  def all
    Department.in_hospital(@in_hospital).all
  end
end