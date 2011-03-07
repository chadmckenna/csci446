class Author < ActiveRecord::Base
  has_many :articles
  
  validates_presence_of :name
  validate :author_is_not_sally
  
  def to_s
    name
  end
  
  has_attached_file :photo,
                    :url => '/assets/:class/:attachment/:id/:filename'
  
  protected
    def author_is_not_sally
      errors.add(:name, "Author name cannot be 'Sally'. I really don't like Sally...") if name.downcase.include? 'sally'
    end
end
