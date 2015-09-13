class HomeController < ApplicationController
  skip_before_action :require_user

  def show; end
end
