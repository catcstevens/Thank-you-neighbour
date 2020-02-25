Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get "/", to: "pages#home", as: "root"

get "/listings", to: "listings#index", as: "listings"
post "/listings", to: "listings#create"


end
