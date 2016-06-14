class PostsController < ApplicationController
  before_action :find_observed_user
  layout 'user_profile'
  WORD_COUNT_MAX = 1000

  def index
    @posts = @observed_user.posts.order(:created_at).take(10)
  end

  def show
    id = params[:id]
    @post = Post.find(id)
    @layout_index = params[:layout_index]
  end
end
