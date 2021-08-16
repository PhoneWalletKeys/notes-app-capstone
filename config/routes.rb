Rails.application.routes.draw do
  get "/notes" => "notes#index"
  get "/notes/:id" => "notes#show"
  post "/users" => "users#create"
  patch "/notes/:id" => "notes#update"
  delete "/notes/:id" => "notes#destroy"

  post "/sessions" => "sessions#create"

  post "/notes" => "notes#create"
end
