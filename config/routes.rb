Rails.application.routes.draw do
  root to:  'pages#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  namespace :users do
    get 'admins', to: 'admins#index'
  end

  namespace :pages do
    resources :searches, only: :index
  end

  resources :pages, except: :show
  # resources :pages, only: [:index, :new, :create]
end
