class Api::UsersController < Api::ApiController
  before_action :authenticate_user!, only: [:show, :update]

  def show
    render json: current_user, status: :ok
  end

  def create
    create_user_service = CreateUser.new(user_params).create
    render json: create_user_service.user, status: create_user_service.success? ? :ok : :not_acceptable
  end

  def update
    update_user_service = UpdateUser.new(user_params, current_user).update
    render json: current_user, status: update_user_service.success? ? :ok : :not_modified
  end

  private

  def user_params
    @user_params ||= params.require(:user).permit(:password, :email, :first_name, :last_name)
  end
end