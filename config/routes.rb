Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :users, only: %i[index show destroy]

  resources :projects, only: %i[index show] do
    member do
      post :join
    end
    resources :topics, only: %i[create update delete]
    resources :tasks, only: %i[create update delete]
  end
  # resources :tasks,
  resource :my, only: :show, controller: :my do
    get :projects
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
