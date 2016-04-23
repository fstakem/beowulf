class TaskSkill < ActiveRecord::Base
  self.table_name = "tasks_skills"

  belongs_to :task 
  belongs_to :skill
end
