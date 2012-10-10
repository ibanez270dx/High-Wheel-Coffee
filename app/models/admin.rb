class Admin < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
  
  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true

  def name
    "#{first_name} #{last_name}".strip
  end

  def self.authenticate(email, password)
    find_by_email(email).try(:authenticate, password)
  end
end
