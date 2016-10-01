class ApplicationController < ActionController::Base
  #check_authorization
  load_and_authorize_resource
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  helper_method :current_user
  
end
