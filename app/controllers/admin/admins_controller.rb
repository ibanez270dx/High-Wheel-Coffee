class Admin::AdminsController < ApplicationController
  before_filter :redirect_if_not_logged_in, except: :login
  
  layout "admin"
  
  def login
    redirect_to admin_admins_path if current_admin
    
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
    reset_session
    redirect_to admin_login_path
  end
  
  ########################################
  # Admin CRUD Methods
  ########################################
  
  def index
    @admins = Admin.all
  end
  
  def new
    @admin = Admin.new
  end
  
  def create
    @admin = Admin.new params[:admin]
    if @admin.save
      flash[:success] = "Admin created successfully"
      redirect_to admin_admins_path
    else
      render action: "new"
    end
  end
  
  def edit
    @admin = Admin.find params[:id]
  end
  
  def update
    @admin = Admin.find params[:id]
    
    if @admin.update_attributes params[:admin]
      flash[:success] = "Admin updated successfully"
      redirect_to admin_admins_path
    else
      render action: "edit"
    end
  end
      
  def destroy
    @admin = Admin.find params[:id]
    
    if @admin.destroy
      flash[:success] = "Admin deleted successfully"
      redirect_to admin_admins_path
    end
  end
  
end
