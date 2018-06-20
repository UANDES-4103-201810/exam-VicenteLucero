Rails.application.routes.draw do

  get 'images/index'
  get 'images/new'
  get 'images/show'
  resources :recipes do
    resources :ingredients
    resources :pizzas
  end
  resources :carts
  root 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
