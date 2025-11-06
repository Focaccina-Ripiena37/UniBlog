class AddViewsAndLikesToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :views_count, :integer, null: false, default: 0
    add_column :posts, :likes_count, :integer, null: false, default: 0
  end
end
