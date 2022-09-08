class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |post| 
      post.string :title
      post.text :content 
      post.string :category 
      post.timestamps
    end
  end
end
