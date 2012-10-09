module ApplicationHelper

  def current_admin
    Admin.find session[:admin_id] if session[:admin_id]
  end

  def flash_class(level)
    case level
    when :notice then "info"
    when :error then "error"
    when :alert then "warning"
    when :success then "success"
    end
  end
      
end
