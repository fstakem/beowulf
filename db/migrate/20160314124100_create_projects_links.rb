class CreateProjectsLinks < ActiveRecord::Migration
  def change
    create_table :projects_links do |t|
      t.belongs_to  :project,    index:true
      t.belongs_to  :link,       index:true

      t.timestamps null: false
    end

    add_foreign_key :projects_links, :projects, column: :project_id
    add_foreign_key :projects_links, :links, column: :link_id
  end
end
