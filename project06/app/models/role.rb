class Role < ActiveRecord::Base
  attr_accessible :role_name
  has_many :permissions, :dependent => :destroy
  has_many :users, :through => :permissions, :uniq => true
end
