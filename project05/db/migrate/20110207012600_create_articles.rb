class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title, :null => false
      t.integer :author_id, :null => false, :options => "CONSTRAINT fk_article_authors REFERENCES authors(id)"
      t.text :body, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
