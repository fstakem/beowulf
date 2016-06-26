class LinksController < ApplicationController
  before_action :find_observed_user
  layout 'links'

  def index
    @links = @observed_user.links
  end
end
