Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# Top
root "public/homes#top"
get 'about', to: "public/homes#about"

# member
# search

# 管理者
namespace :admin do
  root "homes#top"

end
#devise
 # devise_for :members,skip:[:passwords], controllers: {registrations: "public/registrations",sessions: 'public/sessions'}
 # devise_for :admin,skip:[:registrations, :passwords], controllers: {sessions: "admin/sessions"}

end
