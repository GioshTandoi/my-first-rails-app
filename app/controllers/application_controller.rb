class ApplicationController < ActionController::Base
  # Before you run any actions call set current user.
  # That is what will happen before you make a request
  # in your rails app.
  before_action :set_current_user

  def set_current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
