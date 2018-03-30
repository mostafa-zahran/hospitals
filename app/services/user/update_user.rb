class UpdateUser
  attr_reader :user

  def initialize(user_params, current_user)
    @user_params = user_params
    @current_user = current_user
  end

  def update
    begin
      @user = @current_user.update!(@user_params)
      @success = true
    rescue
      @success = false
    end
    self
  end

  def success?
    @success
  end
end