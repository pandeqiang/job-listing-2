Rails.application.routes.draw do
  #devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jobs
  namespace :admin do
    resources :jobs do
  end
end

  root 'jobs#index'
end
