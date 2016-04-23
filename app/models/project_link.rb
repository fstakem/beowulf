class ProjectLink < ActiveRecord::Base
  self.table_name = "projects_links"

  belongs_to :project 
  belongs_to :link
end
