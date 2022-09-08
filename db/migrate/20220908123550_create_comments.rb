class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |c| 
      c.text :content, :limit => 255
      c.integer :user_id
      c.integer :post_id
      c.timestamps
    end
  end
end
