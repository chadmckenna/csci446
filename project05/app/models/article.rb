class Article < ActiveRecord::Base
  validates_presence_of :title, :author, :body
  validate :author_is_not_sally
  
protected
  def author_is_not_sally
    errors.add(:author, "Author name cannot be 'Sally'. I really don't like Sally...") if author.downcase.include? 'sally'
  end
end
