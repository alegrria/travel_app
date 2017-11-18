Rails.application.routes.draw do
  resources :flights
  resources :austauschschulers
  root 'austauschschulers#index'
end
