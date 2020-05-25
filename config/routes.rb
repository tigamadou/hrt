Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  devise_for :users
  get 'users', to: 'user#index' , as: 'user_index' 
  get 'users/:username', to: 'user#show' , as: 'user_show' 
  
  resources :posts, only: %i[index create] do
    resources :comments, only: [:create]
    resources :likes, only: %i[create destroy]
  end
  
end
