class ProjectsController < ApplicationController
  before_action :find_observed_user
  layout 'user_profile'

  def index
    @projects = @observed_user.projects
  end

  def show
    id = params[:id]
    @project = Project.find(id)
    @layout_index = params[:layout_index]
  end
end
