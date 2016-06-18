class PostsController < ApplicationController
  before_action :find_observed_user
  layout 'user_profile'
  WORD_COUNT_MAX = 1000
  @@num_photos_grouped = 3

  def index
    @posts = @observed_user.posts.order(:created_at)
    @posts.map { |post| post.group_photos(@@num_photos_grouped) }
  end

  def show
    id = params[:id]
    @post = Post.find(id)
    @post.group_photos(@@num_photos_grouped)
    @layout_index = params[:layout_index]
  end
end
