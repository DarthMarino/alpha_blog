Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#homepage'
  get 'about', to: 'pages#about'
  resources :articles

  get 'users/signup', to: 'users#new'
  get 'users/login', to:'sessions#new'
  post 'users/login', to:'sessions#create'
  delete 'users/logout', to:'sessions#destroy'
  resources :users, except: [:new]
end
