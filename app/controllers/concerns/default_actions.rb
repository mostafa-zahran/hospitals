module DefaultActions
  def index
    render json: list_service.new(list_params).all
  end

  def show
    service = find_service.new(params[:id]).find
    render json: service.resource, status: service.found? ? :ok : :not_found
  end

  private

  def list_params
    {}
  end
end