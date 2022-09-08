class AddPostedByColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :posted_by, :string
  end
end
