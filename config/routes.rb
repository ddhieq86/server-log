Rails.application.routes.draw do
  root "server_logs#index"

  get "/server_logs", to: "server_logs#index"
  post "/server_logs/new", to: "server_logs#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
