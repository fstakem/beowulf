class CreateProjectsPhotos < ActiveRecord::Migration
  def change
    create_table :projects_photos do |t|
      t.string      :title
      t.string      :caption
      t.belongs_to  :project,   index:true
      t.belongs_to  :photo,     index:true

      t.timestamps null: false
    end

    add_foreign_key :projects_photos, :projects, column: :project_id
    add_foreign_key :projects_photos, :photos, column: :photo_id
  end
end
