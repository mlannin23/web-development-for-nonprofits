class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :approve

  def authenticate_admin!
    unless current_user.try(:admin?)
      flash[:danger] = "You must be an administrator to access this page"
      redirect_to root_path
    end
  end

  def approve
    if current_user.try(:admin?)
      user = User.find(params[:id])
      user.update_attribute :approved, true
      flash[:success] = "The user has been approved"
      redirect_to admin_path
    else
      flash[:danger] = "You must be an adminstrator to approve users"
      redirect_to root_path
    end
  end

end
