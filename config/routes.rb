Rails.application.routes.draw do
  
  resources :posts  do
    resources :comments, only: [:create]
    resources :likes, only: %i[create destroy]
  end
  devise_for :users

   get 'users/:username', to: 'users#show' , as: 'show_user'

  post 'following/create', to: 'following#create', as: 'create_following'
  
  root 'posts#index'

end
