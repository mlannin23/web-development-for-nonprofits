class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    unless current_user.try(:admin?)
      flash[:danger] = "You must be an administrator to access this page"
      redirect_to root_path
    end
  end

end
