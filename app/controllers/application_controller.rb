class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, unless: :rails_admin_controller?

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  private

  def authenticate_user!
    redirect_to new_session_path unless current_user
  end

  def rails_admin_controller?
    false
  end
end
