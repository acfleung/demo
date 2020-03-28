Rails.application.routes.draw do
  root 'pages#home'

  get '/articles/plain', to: 'articles#plain'
  resources :articles, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
