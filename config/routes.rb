Rails.application.routes.draw do
  scope ':username' do 
    resources :schools
    resources :photos
    resources :tasks
    resources :jobs
    resources :links
    resources :posts
    resources :projects
  end

  devise_for :users
  root 'users#main_landing'
  get ':username'             => 'users#user_landing'
  get ':username/about_me'    => 'users#about_me'
  get ':username/resume'      => 'users#resume'

end
