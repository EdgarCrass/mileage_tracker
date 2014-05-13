MileageTracker::Application.routes.draw do
  resources :makes
  resources :models
  resources :vehicles
  resources :mileages, only: [:index, :new, :create]

  root to: 'vehicles#index'
end

