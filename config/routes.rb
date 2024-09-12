Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :players, only: [:edit, :update]
  resources :bdlteams, only: [:show]
  get "players/waivers", to: "players#waivers"
  get "players/affiliate", to: "players#affiliate"
  get "players/updateall", to: "players#update_all"
end
