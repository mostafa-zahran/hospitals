class Api::HospitalsController < Api::ApiController
  include DefaultActions

  private

  def list_service
    ListHospitals
  end

  def find_service
    FindHospital
  end

  def list_params
    {governorate_id: params[:governorate_id], specialty_id: params[:specialty_id]}
  end
end