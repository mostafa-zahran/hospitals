class Api::CommentsController < Api::ApiController
  include DefaultActions
  before_action :authenticate_user!, only: [:create, :update]

  def create
    create_comment_service = CreateComment.new(comment_params, current_user).create
    render create_comment_service.comment, create_comment_service.success? ? :ok : :not_acceptable
  end

  def update
    update_comment_service = UpdateComment.new(comment_params, current_user).update
    render update_comment_service.comment, update_comment_service.success? ? :ok : :not_modified
  end

  private

  def list_service
    ListComments
  end

  def find_service
    FindComment
  end

  def comment_params
    @comment_params ||= params.require(:comment).permit(:id, :comment, :doctor_id)
  end

  def list_params
    {doctor_id: params[:doctor_id]}
  end
end