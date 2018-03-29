class AuthenticateUser
  attr_reader :current_user

  def initialize(email, password)
    @email = email
    @password = password
    @current_user = nil
    @authenticated = false
  end

  def admin_panel
    authenticated!(User.where(email: @email, is_admin: true).first)
    self
  end

  def api
    authenticated!(User.find_by_email(@email))
    self
  end

  def authenticated?
    @authenticated
  end

  private

  def authenticated!(user)
    @authenticated = user.password == @password
    @current_user = user if @authenticated
  end
end