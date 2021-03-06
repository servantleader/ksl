class CategoryPostJoinTable < ActiveRecord::Migration
  def self.up
    create_table :categories_posts, :id => false do |t|
      t.references :category
      t.references :post
    end
  end

  def self.down
    drop_table :categories_posts
  end
end
