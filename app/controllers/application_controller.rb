class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_user
  helper_method :current_user
  helper_method :date_link

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to root_path unless current_user
  end

  def date_link(date)
    if Date.current > date
      "#{date.day}"
    else
      "<a data-remote='true' href='#{new_event_path}'>#{date.day}</a>".html_safe
    end
  end
end
