Rails.application.routes.draw do
  resources :num_of_likes
  resources :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
