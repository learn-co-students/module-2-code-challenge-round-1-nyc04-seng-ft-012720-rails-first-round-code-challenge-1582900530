Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines
  resources :heroine_power
end
