Rails.application.routes.draw do
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'

  resources :articles

  get 'signup', to: 'users#signup', as: 'signup'
  post 'signup', to: 'users#create'
end
