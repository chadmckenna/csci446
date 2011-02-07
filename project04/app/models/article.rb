class Article < ActiveRecord::Base
  validates_presence_of :title, :author, :body, :creation_date
  validates_uniqueness_of :title
  validate :author_is_not_sally
  
protected
  def author_is_not_sally
    errors.add(:author, "Author name cannot be 'Sally'. I really don't like Sally...") if author.eql? "Sally"
  end
end
