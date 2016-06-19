class UsersController < ApplicationController
  before_action :find_observed_user, only: [:user_landing, :about_me, :resume]
  layout :resolve_layout

  def main_landing
    @users = User.all
  end

  def user_landing
  end

  def about_me
  end

  def resume
    @schools = @observed_user.schools.all()
    @jobs = @observed_user.jobs.all()
    @projects = @observed_user.projects.all()
    @skills = @observed_user.skills.all()
  end

  # ----------------------------------------------------------------------------
  private

  def resolve_layout
    case action_name
    when "main_landing"
      "main_landing"
    when "user_landing", 
      "user_landing"
    when "about_me"
      "user_about"
    when "resume"
      "user_profile"
    else
      "user_profile"
    end
  end


end
