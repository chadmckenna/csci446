class Role < ActiveRecord::Base
  has_many :users
  attr_accessible :name, :user_id
  
  def to_s
    name.downcase.strip
  end
end
