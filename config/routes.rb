Rails.application.routes.draw do
  get "up" => "rals/health#show", as: :rails_health_check
  resources :rooms
  resources :users
end
