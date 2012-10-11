class Coffees < ActiveRecord::Base
  
  attr_accessible :featured, :name, :growing_region, :cultivar, :processing, :flavor_profile, :primary_photo, :secondary_photo
  
  has_attached_file :primary_photo,   styles: { large:  '450', small:  '200'}, default_url: '', 
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"
    
  has_attached_file :secondary_photo, styles: { large:  '450', small:  '200'}, default_url: '',
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"

  validates :name, presence: true, uniqueness: true
  validates :growing_region, presence: true
  validates :cultivar, presence: true
  
end
