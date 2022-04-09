Rails.application.routes.draw do

  namespace :members do
    get 'good/index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#devise
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :members, controllers: {
    sessions: 'members/sessions'
  }

# top
  root "members/home#top"
    get "/about", to: "members/home#about", as: "about"
# member
  namespace :members do
    resources :ideas
    resources :members
  end

#search


# admin
namespace :admin do
  root "homes#top"
  resources :members
  resources :categorys
  resources :ideas

end




end
