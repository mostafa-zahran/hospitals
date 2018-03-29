class Api::DepartmentsController < Api::ApiController
  include DefaultActions

  private

  def list_service
    ListDepartments
  end

  def find_service
    FindDepartment
  end

  def list_params
    { in_hospital: params[:in_hospital] }
  end
end