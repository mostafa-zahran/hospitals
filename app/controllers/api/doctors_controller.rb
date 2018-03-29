class Api::DoctorsController < Api::ApiController
  include DefaultActions

  private

  def list_service
    ListDoctors
  end

  def find_service
    FindDoctor
  end

  def list_params
    {department_id: params[:department_id]}
  end
end