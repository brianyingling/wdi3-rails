class ApplicationController < ActionController::Base
  protect_from_forgery
  # Create a before filter to show whether user
  # is logged in. This runs before anything else
  before_filter :authenticate

  # private methods are NOT actions -- they are just run inside of a
  # controller.
  private
  def authenticate
    # Instance variables are available inside all of your views
    @auth = User.find(session[:user_id]) if session[:user_id].present?
  end
end
