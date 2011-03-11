class User < ActiveRecord::Base
  has_many :games
  acts_as_authentic
  belongs_to :role
  
  validates_uniqueness_of :username
  validates_length_of :username, :within => 6..40 
  
  attr_readonly :username
  
  attr_accessible :username, :password, :password_confirmation, :first_name, :last_name, :email, :role_id
  
  has_attached_file :photo
  
  def to_s
    first_name + ' ' + last_name
  end
  
  def role_symbols
    [role.name.downcase.to_sym]
  end
end
