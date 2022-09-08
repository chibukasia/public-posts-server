class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |user| 
      user.string :username
      user.string :country
    end
  end
end
