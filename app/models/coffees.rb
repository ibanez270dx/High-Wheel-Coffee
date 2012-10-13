class Coffees < ActiveRecord::Base
  
  attr_accessible :featured, :name, :url_name, :growing_region, :cultivar, :processing, :flavor_profile, :primary_photo, :secondary_photo

  before_save :update_url_name

  validates :name, presence: true, uniqueness: true
  validates :growing_region, presence: true
  validates :cultivar, presence: true
  
  default_scope order('created_at desc')
  scope :featured, where(featured: true)
  
  has_attached_file :primary_photo,   styles: { large:  '350', small:  '200'}, default_url: '', 
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"
    
  has_attached_file :secondary_photo, styles: { large:  '350', small:  '200'}, default_url: '',
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"
    
  private
    
    def update_url_name
      self.url_name = name.parameterize if self.url_name.blank?
    end
  
end
