Rails.application.routes.draw do

get "/teams/:id", to: 'teams#show'
get "/teams", to: 'teams#index'

end
