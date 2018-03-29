class Api::SpecialtiesController < Api::ApiController
  include DefaultActions

  private

  def list_service
    ListSpecialties
  end

  def find_service
    FindSpecialty
  end
end