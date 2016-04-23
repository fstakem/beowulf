class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def render_404
    render file: "#{Rails.root}/public/404.html", layout: false, status: 404
  end

  private 

  def find_observed_user
    username = params['username']
    @observed_user = User.find_by username: username.downcase

    if @observed_user.nil?
      render_404
    end
  end
end
