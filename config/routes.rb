Rails.application.routes.draw do
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'

  resources :articles

  get 'signup', to: 'users#signup', as: 'signup'
  post 'signup', to: 'users#create'

  get 'update-account', to: 'users#update_account', as: 'update_account'
  post 'update-account', to: 'users#update'

  get 'users/:id', to: 'users#show', as: 'user'
  get 'users', to: 'users#index', as: 'users'

  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
end
