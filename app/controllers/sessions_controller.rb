class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    redirect_to rails_admin_path if current_user
  end

  def create
    auth_service = AuthenticateUser.new(params[:email], params[:password]).admin_panel
    if auth_service.authenticated?
      session[:user_id] = auth_service.current_user.id
      flash[:notice] = 'UI.flash.success.sign_in'
      redirect_to rails_admin_path
    else
      flash[:danger] = 'UI.flash.failed.sign_in'
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'UI.flash.success.log_out'
    redirect_to new_session_path
  end
end