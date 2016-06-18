class ProjectsController < ApplicationController
  before_action :find_observed_user
  layout 'user_profile'
  @@num_photos_grouped = 3

  def index
    @projects = @observed_user.projects.order(:created_at)
    @projects.map { |project| project.group_photos(@@num_photos_grouped) }  
  end

  def show
    id = params[:id]
    @project = Project.find(id)
    @project.group_photos(@@num_photos_grouped)
    @layout_index = params[:layout_index]
  end
end
