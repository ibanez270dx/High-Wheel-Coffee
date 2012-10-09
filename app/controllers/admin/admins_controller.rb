class Admin::AdminsController < ApplicationController
  before_filter :redirect_if_not_logged_in, except: :login
  
  layout "admin"
  
  def login
    if request.post?
      @admin = Admin.authenticate(params[:email], params[:password])
      if @admin 
        session[:admin_id] = @admin.id
        redirect_to admin_admins_path
      else
        flash[:error] = "Incorrect email or password"
      end
    end
  end
  
  def logout
    
  end
  
  ########################################
  # Admin CRUD Methods
  ########################################
  
  def index
    
  end
  
  def new
    
  end
  
  def edit
    
  end
  
  def destroy
    
  end
  
end
