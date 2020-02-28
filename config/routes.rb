Rails.application.routes.draw do
  resources :heroine_powers
  resources :powers, only: [:index, :show,:edit,:update]
  resources :heroines, only: [:index,:show,:new,:create,:edit,:update]  
end
