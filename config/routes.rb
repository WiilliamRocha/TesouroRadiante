Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'feedbacks/create'
  get 'feedbacks/destroy'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users, only: [:new, :create, :edit, :update]
   resources :products
   resources :feedbacks, only: [:create, :destroy]
   resources :sessions, only: [:new, :create, :destroy]

   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   delete 'logout', to: 'sessions#destroy'
   root 'products#index'
 end
