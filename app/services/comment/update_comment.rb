class UpdateComment
  attr_reader :comment

  def initialize(comment_params, current_user)
    @comment_params = comment_params
    @current_user = current_user
  end

  def update
    begin
      @comment = Comment.approved.where(id: @comment_params[:id], user_id: @current_user.id)
      @comment.update!(@comment_params)
      @success = true
    rescue
      @success = false
    end
  end

  def success?
    @success
  end
end