Rails.application.routes.draw do
  root "rooms#index"
  resources :rooms, only: [:index, :show]
end
