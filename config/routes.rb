Rails.application.routes.draw do
  
  resources :posts  do
    resources :comments, only: [:create]
    resources :likes, only: %i[create destroy]
  end
  devise_for :users
  # get 'users', to: 'users#index' , as: 'users' 
   get 'users/:username', to: 'users#show' , as: 'show_user'
  # get 'users/:username/edit', to: 'users#edit' , as: 'edit_user'
  # get 'users/', to: 'users#edit' , as: 'user'
  # patch 'users/', to: 'users#update' , as: 'user_update'
  post 'following/create', to: 'following#create', as: 'create_following'
  
  root 'posts#index'

end
