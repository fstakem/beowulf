class CreateProjectsSkills < ActiveRecord::Migration
  def change
    create_table :projects_skills do |t|
      t.belongs_to  :project,    index:true
      t.belongs_to  :skill,      index:true
      
      t.timestamps null: false
    end

    add_foreign_key :projects_skills, :projects, column: :project_id
    add_foreign_key :projects_skills, :skills, column: :skill_id
  end
end
