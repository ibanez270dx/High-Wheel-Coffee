class ContentController < ApplicationController
  
  def home
    
  end
  
  def coffee
    @coffee = Coffees.find_by_url_name params[:url_name]
  end
  
  def archive 
    @coffees = Coffees.all
  end
end
