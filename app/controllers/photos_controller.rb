class PhotosController < ApplicationController
  before_action :find_observed_user
  layout 'user_profile'

  def index
    @photos = @observed_user.photos
  end
end
