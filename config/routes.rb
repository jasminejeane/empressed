Rails.application.routes.draw do
	
  root to: "stylists#index"

  get "/stylists", to: "stylists#index", as: "stylists"

 get "/stylists/new", to: "stylists#new", as: "new_stylist"

 post "/stylists", to: "stylists#create"


 get "/stylists/:id", to: "stylists#show"


 
end
