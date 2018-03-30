class Api::CommentsController < Api::ApiController
  include DefaultActions
  before_action :authenticate_user!, only: :create

  def create
    create_comment_service = CreateComment.new(comment_params, current_user).create
    render json: create_comment_service.comment, status: create_comment_service.success? ? :ok : :not_acceptable
  end

  private

  def list_service
    ListComments
  end

  def find_service
    FindComment
  end

  def comment_params
    @comment_params ||= params.require(:comment).permit(:comment, :doctor_id)
  end

  def list_params
    {doctor_id: params[:doctor_id]}
  end
end