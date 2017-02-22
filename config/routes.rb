Rails.application.routes.draw do

post "/teams", to: 'teams#create'
get "/teams/new", to: 'teams#new'
patch "/teams/:id", to: 'teams#update'
get "/teams/:id", to: 'teams#edit'
get "/teams/:id", to: 'teams#show'
get "/teams", to: 'teams#index'
delete "/teams/:id", to: 'teams#destroy'

end
