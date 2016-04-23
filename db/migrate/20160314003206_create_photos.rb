class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string      :name,        null: false
      t.belongs_to  :user,        index:true

      t.timestamps                null: false
    end

    add_foreign_key :photos, :users, column: :user_id
  end
end
