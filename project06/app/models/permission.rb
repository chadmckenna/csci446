class Permission < ActiveRecord::Base
  using_access_control
  
  attr_accessible :user_id, :role_id
  
  belongs_to :user
  belongs_to :role
end