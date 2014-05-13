MileageTracker::Application.routes.draw do
  resources :vehicles
  resources :makes
  resources :models
  resources :mileages, only: [:index, :new, :create]

  root to: 'vehicles#index'
end

