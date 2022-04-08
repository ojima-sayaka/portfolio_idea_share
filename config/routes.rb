Rails.application.routes.draw do
  devise_for :admins
  devise_for :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# Top
root "public/homes#top"
get 'about', to: "public/homes#about"

devise_scope :members do
  post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
end

# member
namespace :members do
  resources :ideas
  resources :members

#search
get "search" => "searches#search"
get "search_result" => "searches#search_result"
end

# admin
namespace :admin do
  root "homes#top"
  resources :customers
  resources :categorys
  resources :ideas

end
#devise
 #devise_for :members,skip:[:passwords], controllers: {registrations: "public/registrations",sessions: 'public/sessions'}
 #devise_for :admin,skip:[:registrations, :passwords], controllers: {sessions: "admin/sessions"}

end
