module DefaultActions
  def index
    render list_service.new(list_params).all
  end

  def show
    service = find_service.new(params[:id]).find
    render service.resource, status: service.found? ? :ok : :not_found
  end

  private

  def list_params
    {}
  end
end