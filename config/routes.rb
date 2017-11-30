Rails.application.routes.draw do
  root "foodsand_drinks#home"
  get "/detail", to: "foodsand_drinks#detail"
  get "/product", to: "foodsand_drinks#product"
  resources :foodsand_drinks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
