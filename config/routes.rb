Rails.application.routes.draw do
	root to: "pages#home"

resources :stylists

resources :clients

resources :reservations

resources :sessions, only: [:create, :new]

get "/location", to: "pages#location", as: "location"

get "/client_stylist", to: "pages#client_stylist", as: "client_stylist"

delete "/sessions", to: "sessions#destroy", as: "logout"

#OPTIMIZE: RESTful routes always are plural
#OPTIMIZE: If it is to create a reservation then a `post` to `/reservations` would make more sense
post "/stylist/:id", to: "reservations#create", as: "create_reservation"

#TODO: Nice routes, overall!

end
