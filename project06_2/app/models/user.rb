class User < ActiveRecord::Base
  acts_as_authentic
  belongs_to :role
  attr_accessible :username, :password, :password_confirmation, :first_name, :last_name, :email, :role_id
  
  def role_symbols
    [role.name.downcase.to_sym]
  end
end
