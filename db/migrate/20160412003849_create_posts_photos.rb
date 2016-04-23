class CreatePostsPhotos < ActiveRecord::Migration
  def change
    create_table :posts_photos do |t|
      t.string      :title
      t.string      :caption
      t.belongs_to  :post,    index:true
      t.belongs_to  :photo,   index:true

      t.timestamps null: false
    end

    add_foreign_key :posts_photos, :posts, column: :post_id
    add_foreign_key :posts_photos, :photos, column: :photo_id
  end
end
