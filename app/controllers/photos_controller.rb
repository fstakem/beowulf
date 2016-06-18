class PhotosController < ApplicationController
  before_action :find_observed_user
  layout 'user_profile'

  @@num_photos_grouped = 4

  def index
    @photos = @observed_user.photos
    @photo_groups = @photos.each_slice(@@num_photos_grouped).to_a
  end
end
