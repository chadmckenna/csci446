class Role < ActiveRecord::Base
  has_many :users
  attr_accessible :name, :user_id
end
