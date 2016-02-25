Rails.application.routes.draw do
	root to: "pages#home"



resources :stylists

resources :clients

resources :reservations

resources :sessions, only: [:create, :new]

get "/location", to: "pages#location", as: "location"

get "/client_stylist", to: "pages#client_stylist", as: "client_stylist"

delete "/sessions", to: "sessions#destroy", as: "logout"
 
end
