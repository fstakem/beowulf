class ProjectSkill < ActiveRecord::Base
  self.table_name = "projects_skills"

  belongs_to :project 
  belongs_to :skill
end
