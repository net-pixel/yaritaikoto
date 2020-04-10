Rails.application.routes.draw do
  root 'pages#index'
  resources :pages, except: :show do
    collection do
      get 'search'
    end
  end
end
