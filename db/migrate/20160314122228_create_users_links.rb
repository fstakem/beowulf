class CreateUsersLinks < ActiveRecord::Migration
  def change
    create_table :users_links do |t|
      t.belongs_to  :user,   index:true
      t.belongs_to  :link,   index:true

      t.timestamps null: false
    end

    add_foreign_key :users_links, :users, column: :user_id
    add_foreign_key :users_links, :links, column: :link_id
  end
end
