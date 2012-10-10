module ApplicationHelper

  def current_admin
    Admin.find session[:admin_id] if session[:admin_id]
  end
  
  def current_page_is(page)
    "class=active" if is_page?(page)
  end
  
  def is_page?(pages)
    if pages.is_a? String
      pages = [pages]
    end
    
    pages.each do |page|
      page = page.split('#')
      return true if page.first == controller.controller_name && (page.last == controller.action_name || page.last == "any")
    end
    
    return false
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
