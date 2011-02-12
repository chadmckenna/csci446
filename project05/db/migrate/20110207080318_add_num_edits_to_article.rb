class AddNumEditsToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :num_edits, :integer
  end

  def self.down
    remove_column :articles, :num_edits
  end
end
