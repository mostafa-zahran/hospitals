class Api::GovernoratesController < Api::ApiController
  include DefaultActions

  private

  def list_service
    ListGovernorates
  end

  def find_service
    FindGovernorate
  end
end