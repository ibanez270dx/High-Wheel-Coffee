class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :redirect_if_not_logged_in
  
  def redirect_if_not_logged_in
    redirect_to admin_login_path unless Admin.find_by_id(session[:admin_id])
  end

  helper_method :current_admin
    
  def current_admin
    @current_admin = Admin.find_by_id(session[:admin_id])
  end

end
