Rails.application.routes.draw do
  root 'pages#index'

  namespace :pages do
    resources :searches, only: :index
  end
  
  resources :pages, except: :show
end
