Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :users, only: [:new, :create]

  # Registration (sign-up) as singular resource, per slides
  resource :registration, only: [:new, :create]

  resources :posts do 
    resources :comments

    # Likes on posts
    resources :likes, only: [:create, :destroy]
  end

  # Likes on comments
  resources :comments, only: [] do
    resources :likes, only: [:create, :destroy]
  end
  # Emoji reactions
  post "/posts/:post_id/react/:kind", to: "reactions#create", as: :react_post
  root "posts#index"
end
