class SessionsController < ApplicationController
  skip_before_action :require_user

  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to events_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
