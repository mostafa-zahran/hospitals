class CreateUser
  attr_reader :user

  def initialize(user_params)
    @user_params = user_params
  end

  def create
    @user = User.create(user_params)
  end

  def success?
    @success ||= @user.present?
  end
end