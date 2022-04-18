Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :projects, only: [:index, :show]
  resources :tasks

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
