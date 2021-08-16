Rails.application.routes.draw do
  get "/notes" => "notes#index"
  get "/notes/:id" => "notes#show"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/notes" => "notes#create"
  patch "/notes/:id" => "notes#update"
  delete "/notes/:id" => "notes#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
