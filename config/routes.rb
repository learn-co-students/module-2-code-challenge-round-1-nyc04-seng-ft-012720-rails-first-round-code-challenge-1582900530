Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :new]
  resources :heroines, only: [:index, :show, :new]  
end
