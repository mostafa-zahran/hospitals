class CreateComment
  attr_reader :comment

  def initialize(comment_params, current_user)
    @comment_params = comment_params
    @current_user = current_user
  end

  def create
    @comment = Comment.create(@comment_params.merge({user_id: @current_user.id}))
    self
  end

  def success?
    @success ||= @comment.present?
  end
end