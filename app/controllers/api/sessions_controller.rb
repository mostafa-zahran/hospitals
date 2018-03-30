class Api::SessionsController < Api::ApiController

  def create
    auth_service = AuthenticateUser.new(session_params[:email], session_params[:password]).api
    render json: auth_service.current_user, status: auth_service.authenticated? ? :ok : :unauthorized
  end

  private

  def session_params
    @session_params ||= params.require(:session).permit(:password, :email)
  end
end