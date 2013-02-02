class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
      dashboard_path
  end
  
  def is_admin
    current_user.admin
  end
  
  def must_change_password
    if !current_user.change_password
      redirect_to users_edit_path
      return false
    end
  end
end
