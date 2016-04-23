class LinksController < ApplicationController
  before_action :find_observed_user
  layout 'user_profile'

  def index
    @links = @observed_user.links
  end
end
