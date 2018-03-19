Rails.application.routes.draw do
  resources :users, only: [:create, :show, :update]
  resources :families, only: [:create, :show, :update]
end
