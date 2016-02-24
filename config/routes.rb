Rails.application.routes.draw do
	root to: "pages#home"

# GET /location to: "pages#location"

resources :stylists

resources :clients

resources :reservations

resources :sessions

 
end
