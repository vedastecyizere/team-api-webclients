Rails.application.routes.draw do

post "/teams", to: 'teams#create'
get "/teams/new", to: 'teams#new'
get "/teams/:id", to: 'teams#show'
get "/teams", to: 'teams#index'
delete "/teams/:id", to: 'teams#destroy'

end
