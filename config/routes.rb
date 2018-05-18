Rails.application.routes.draw do
  resources :productos
  resources :compras
  devise_for :usuarios
  resources :usuarios
  root to: "productos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
