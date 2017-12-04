Rails.application.routes.draw do
  root "static_pages#home"
  delete "/logout", to: "sessions#destroy"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  get "/signup", to: "users#new"
  resources :static_pages
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
