Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# Top
root to: "public/homes#top"
get "public/homes#about"

end
