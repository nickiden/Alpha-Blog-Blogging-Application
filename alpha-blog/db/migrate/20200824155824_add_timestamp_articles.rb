class AddTimestampArticles < ActiveRecord::Migration[6.0]
  
  # modify articles table to add a column for datetime stamp
  def change
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
