class SkillsController < ApplicationController
  before_action :find_observed_user
  layout 'user_profile'

  def index
    @skills = @observed_user.skills
  end
end
