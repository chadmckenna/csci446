class User < ActiveRecord::Base
  has_many :permissions, :dependent => :destroy
  has_many :roles, :through => :permissions
  
  acts_as_authentic
  
  has_attached_file :photo, :url => '/assets/:class/:attachment/:id/:filename'
  
  validates_attachment_presence :photo
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
    
  validates_uniqueness_of :username
  validates_length_of :username, :within => 6..40 
  
  attr_readonly :username
  attr_accessible :username, :password, :password_confirmation, :first_name, :last_name, :email
  
  def role_symbols
    @role_symbols ||= (roles || []).map {|r| r.role_name.underscore.to_sym}
  end
end
