Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'pages/about'

  get "about", to: "pages#about" 

  root 'posts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
