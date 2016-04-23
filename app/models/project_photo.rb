class ProjectPhoto < ActiveRecord::Base
  self.table_name = "projects_photos"

  belongs_to :project
  belongs_to :photo
end
