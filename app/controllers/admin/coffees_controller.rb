class Admin::CoffeesController < ApplicationController
  before_filter :redirect_if_not_logged_in

  layout "admin"

  def index
    @coffees = Coffees.all
  end
  
  def new
    @coffee = Coffees.new
  end
  
  def edit
    @coffee = Coffees.find params[:id]
  end
  
  def create
    @coffee = Coffees.new params[:coffees]
    if @coffee.save
      flash[:success] = "Coffee added successfully"
      redirect_to admin_coffees_path
    else
      render action: "new"
    end
  end
  
  def update
    @coffee = Coffees.find params[:id]
    
    if @coffee.update_attributes params[:coffees]
      flash[:success] = "Coffee updated successfully"
      redirect_to admin_coffees_path
    else
      render action: "edit"
    end
  end
  
  def destroy
    @coffee = Coffees.find params[:id]
    
    if @coffee.destroy
      flash[:success] = "Coffee deleted successfully"
      redirect_to admin_coffees_path
    end
  end
  
end