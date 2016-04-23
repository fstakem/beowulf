class UsersController < ApplicationController
  before_action :find_observed_user, only: [:profile, :about_me, :resume]
  layout :resolve_layout

  def landing
    @users = User.all
  end

  def profile
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
    when "profile"
      "user_profile_landing"
    when "landing", 
      "main"
    when "about_me", "resume"
      "user_profile"
    else
      "user_profile"
    end
  end


end
