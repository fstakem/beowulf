Rails.application.routes.draw do
  scope ':username' do 
    resources :schools
    resources :photos
    resources :skills
    resources :tasks
    resources :jobs
    resources :links
    resources :posts
    resources :projects
  end

  devise_for :users
  root 'users#landing'
  get ':username'             => 'users#profile'
  get ':username/about_me'    => 'users#about_me'
  get ':username/resume'      => 'users#resume'

end
