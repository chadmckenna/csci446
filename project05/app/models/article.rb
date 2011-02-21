class Article < ActiveRecord::Base
  validates_presence_of :title, :author_id, :body
  belongs_to :author
end
