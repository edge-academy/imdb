Rails.application.routes.draw do
  get "/" => "home#root"
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/new" => "movies#new"
  get "/movies/:id" => "movies#show"
end
