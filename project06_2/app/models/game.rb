class Game < ActiveRecord::Base
  attr_accessible :title, :rating, :user_id
end
