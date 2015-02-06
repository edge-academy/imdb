Rails.application.routes.draw do
  get "/" => "home#root"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
