class CreateTasksSkills < ActiveRecord::Migration
  def change
    create_table :tasks_skills do |t|
      t.belongs_to  :task,     index:true
      t.belongs_to  :skill,    index:true

      t.timestamps null: false
    end

    add_foreign_key :tasks_skills, :tasks, column: :task_id
    add_foreign_key :tasks_skills, :skills, column: :skill_id
  end
end
