class Game < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :rating, :user_id
end
